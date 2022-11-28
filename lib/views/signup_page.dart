//flutter
import 'package:flutter/material.dart';
import 'package:matching_app/details/rounded_button.dart';
import 'package:matching_app/details/rounded_text_field.dart';
import 'package:matching_app/details/text_field_container.dart';
import 'package:matching_app/constants/routes.dart' as routes;

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController userIdController = TextEditingController();
  TextEditingController selfIntroductionController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('新規登録'),
      ),
      body: Column(
        children: [
          RoundedTextField(
              keybordType: TextInputType.name,
              controller: nameController,
              color: Colors.white,
              borderColor: Colors.white,
              hintText: 'ユーザーネーム'),
          RoundedTextField(
              keybordType: TextInputType.name,
              controller: userIdController,
              color: Colors.white,
              borderColor: Colors.white,
              hintText: 'ユーザーID'),
          RoundedTextField(
              keybordType: TextInputType.name,
              controller: selfIntroductionController,
              color: Colors.white,
              borderColor: Colors.white,
              hintText: '自己紹介'),
          RoundedTextField(
              keybordType: TextInputType.name,
              controller: emailController,
              color: Colors.white,
              borderColor: Colors.white,
              hintText: 'メールアドレス'),
          RoundedTextField(
              keybordType: TextInputType.name,
              controller: passController,
              color: Colors.white,
              borderColor: Colors.white,
              hintText: 'パスワード'),
          RoundedButton(
              onPressed: () {
                routes.toHomeScreenPage(context: context);
              },
              widthRate: 0.4,
              color: Colors.blue,
              text: '登録')
        ],
      ),
    );
  }
}
