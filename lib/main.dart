import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happ_sales_intern/screens/search_contacts_screen.dart';
import 'package:happ_sales_intern/shared/Cubit/cubit.dart';
import 'package:happ_sales_intern/shared/network/local/blocObserver.dart';
import 'package:happ_sales_intern/shared/network/remote/dio_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..createDatabase()..fetchContacts(),
      child: const MaterialApp(
        home: SearchContactsScreen(),
      ),
    );
  }
}
