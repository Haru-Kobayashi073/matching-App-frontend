//flutter
import 'package:flutter/material.dart';
import 'package:matching_app/details/rounded_button.dart';
import 'package:matching_app/details/rounded_text_field.dart';
import 'package:matching_app/constants/routes.dart' as routes;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController userIdController = TextEditingController();
  TextEditingController selfIntroductionController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matching for your hobby'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
              text: 'ログイン'),
          TextButton(
              onPressed: () => routes.toSignupPage(context: context),
              child: Text('アカウントをお持ちでない方')),
        ],
      ),
    );
  }
}
