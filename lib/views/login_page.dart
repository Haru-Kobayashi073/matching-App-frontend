//flutter
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matching_app/details/rounded_button.dart';
import 'package:matching_app/details/rounded_password_field.dart';
import 'package:matching_app/details/rounded_text_field.dart';
import 'package:matching_app/constants/routes.dart' as routes;
import 'package:matching_app/models/login_model.dart';
import 'package:matching_app/models/main_model.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key, required this.mainModel});
  final MainModel mainModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final LoginModel loginModel = ref.watch(loginProvider);
    final TextEditingController emailController =
        TextEditingController(text: loginModel.email);
    final TextEditingController passController =
        TextEditingController(text: loginModel.password);

    return Scaffold(
      appBar: AppBar(
        title: Text('Matching for your hobby'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedTextField(
              keybordType: TextInputType.emailAddress,
              onChanged: (text) => loginModel.email = text,
              controller: emailController,
              color: Colors.white,
              borderColor: Colors.grey,
              hintText: 'メールアドレス'),
          SizedBox(
            height: 20,
          ),
          RoundedPasswordField(
              onChanged: (text) => loginModel.password = text,
              obscureText: loginModel.isObscure,
              passwordEditingController: passController,
              toggleObscureText: () => loginModel.toggleIsObscure(),
              color: Colors.white,
              borderColor: Colors.grey),
          RoundedButton(
              onPressed: () async => await loginModel.login(context: context),
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
