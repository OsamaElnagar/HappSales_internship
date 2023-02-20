// ignore_for_file: depend_on_referenced_packages

import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happ_sales_intern/models/fetch_contact_model.dart';
import 'package:happ_sales_intern/shared/Cubit/states.dart';
import 'package:happ_sales_intern/shared/network/remote/dio_helper.dart';
import 'package:sqflite/sqflite.dart';
import '../network/local/components.dart';
import 'package:path/path.dart';


// if you like to use local db functions below:  sqflite: ^2.0.3+1 in your pubspec.yaml

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitState());

  static AppCubit get(context) => BlocProvider.of(context);

  late Database? database;
  FetchContactsModel? fetchContactsModel;
  List<FetchContactsModel> models = [];

  String baseUrl =
      'http://13.68.210.77:8080/api/v1/ManagerRequest/GetContactPaged';

  Future fetchContacts() async {
    emit(AppFetchLoadingState());
    models.clear();
    Map<String, dynamic> body = {
      "UserData": "1611",
      "SearchText": "",
    };

    DioHelper.fetchContacts(path: '', data: body).then((value) {
      models.clear();

      for (var element in value.data) {
        //debugPrint(element.toString());
        models.add(FetchContactsModel.fromJson(element));


        if(distinctContacts.isEmpty==true){
          distinctContacts = [];
          insertToDatabase(
              contactName: element['ContactName'],
              accountName: element['AccountName']);

        }
      }
      getFromDatabase(database);
      emit(AppFetchSuccessState());
    }).catchError((onError) {
      pint(onError.toString());
      emit(AppFetchErrorState(onError.toString()));
    });
  }

  Future<void> createDatabase() async {
    emit(AppCreateDatabaseLoadingState());
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'Contacts.db');
    openDatabase(
      path,
      onCreate: (Database database, int version) {
        pint('database created');
        database
            .execute(
          " Create TABLE Contact(ContactID INTEGER PRIMARY KEY,ContactName TEXT,AccountName TEXT)",
        )
            .then((value) {
          pint(' TABLE CREATED');
          emit(AppCreateDatabaseSuccessState());
        }).catchError((onError) {
          pint(" Error While Creating TABLE ${onError.toString()}");
          emit(AppCreateDatabaseErrorState(onError.toString()));
        });
      },
      onOpen: (database) {
        getFromDatabase(database);
        pint('database open');
      },
      version: 1,
    ).then((value) {
      database = value;
    }).catchError((onError) {
      pint(onError.toString());
    });
  }

  Future<void> insertToDatabase({
    required String contactName,
    required String accountName,
  }) {
    return database!.transaction((txn) async {
      return await txn
          .rawInsert(
        'INSERT INTO Contact (ContactName, AccountName) VALUES("$contactName","$accountName")',
      )
          .then((value) {
        pint('$value Inserted Successfully');

        emit(AppInsertDatabaseState());
      }).catchError((onError) {
        pint('Error While Inserting New Record ${onError.toString()}');
      });
    });
  }

  // FetchContactsModel? fetchContactsModel;
  List<FetchContactsModel> fetchedContacts = [];

  List<FetchContactsModel> distinctContacts = [];

  void getFromDatabase(database) {
    fetchedContacts = [];
    distinctContacts  = [];
    database.rawQuery('SELECT * FROM Contact').then((value) {
      for (var element in value) {
        fetchedContacts.add(FetchContactsModel.fromJson(element));
      }
      emit(AppGetDatabaseState());
      distinctContacts =
          LinkedHashSet<FetchContactsModel>.from(fetchedContacts).toSet().toList();
    });

  }

  updateData(String status, int id) async {
    database!.rawUpdate('UPDATE Contact SET !!! = ? WHERE ContactId = ?',
        [status, id]).then((value) {
      getFromDatabase(database);
      emit(AppUpdateDatabaseState());
    });
  }

  deleteData() async {
    database!.rawDelete('DELETE From Contact').then((value) {
     distinctContacts.clear();
      emit(AppDeleteDatabaseState());
    });
  }

  bool isBottomSheetShown = false;
  IconData fabIcon = Icons.edit;

  void changeBottomSheetState(bool isShow, IconData icon) {
    isBottomSheetShown = isShow;
    fabIcon = icon;
    emit(AppChangeBottomSheetState());
  }

  void emitAll() {}
}
