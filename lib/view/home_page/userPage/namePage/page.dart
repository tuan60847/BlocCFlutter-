import 'package:flutter/material.dart';
import 'package:untitled1/component/TextField.dart';

class UserNamePage extends StatefulWidget {
  const UserNamePage({super.key});

  @override
  State<UserNamePage> createState() => _UserNamePageState();
}

class _UserNamePageState extends State<UserNamePage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  void onChangedText(String string) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFieldCustome(
                title: "Họ",
                textEditingController: firstNameController,
                onChanged: onChangedText),
            TextFieldCustome(
                title: "Tên",
                textEditingController: lastNameController,
                onChanged: onChangedText),
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
