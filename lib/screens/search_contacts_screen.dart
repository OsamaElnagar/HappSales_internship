import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happ_sales_intern/models/fetch_contact_model.dart';
import 'package:happ_sales_intern/shared/Cubit/cubit.dart';
import 'package:happ_sales_intern/shared/Cubit/states.dart';
import 'package:happ_sales_intern/shared/styles/colors.dart';
import 'package:happ_sales_intern/shared/styles/fonts.dart';
import 'package:happ_sales_intern/shared/styles/texts.dart';


class SearchContactsScreen extends StatefulWidget {
  const SearchContactsScreen({Key? key}) : super(key: key);

  @override
  State<SearchContactsScreen> createState() => _SearchContactsScreenState();
}

class _SearchContactsScreenState extends State<SearchContactsScreen> {
  TextEditingController searchContactController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: const Text('Search Contact'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                        onPressed: () {
                          cubit.fetchContacts();
                        },
                        child: const Text('Fetch Cache')),
                    const SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          cubit.deleteData();
                        },
                        child: const Text('Clear Cache')),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ContactsBuilder(
                        model: cubit.distinctContacts[index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: cubit.distinctContacts.length,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ContactsBuilder extends StatelessWidget {
  const ContactsBuilder({
    super.key,
    required this.model,
  });

  final FetchContactsModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * .8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        height: 70,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: SoftareoColors.softareoCelestialBlue,
                child: SoftareoHeadlines(headline: model.contactName![0]),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: RichText(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    style: SoftareoTextStyles.softareoHeadlines(
                        fs: 16.0, color: SoftareoColors.softareoOrange),
                    text: '${model.contactName}\n',
                    children: [
                      TextSpan(
                        style:
                            SoftareoTextStyles.softareoHintMontserrat(fs: 13.5),
                        text: '${model.accountName}',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
