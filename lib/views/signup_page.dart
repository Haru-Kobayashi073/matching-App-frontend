//flutter
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matching_app/details/rounded_button.dart';
import 'package:matching_app/details/rounded_password_field.dart';
import 'package:matching_app/details/rounded_text_field.dart';
import 'package:matching_app/details/text_field_container.dart';
import 'package:matching_app/constants/routes.dart' as routes;
import 'package:matching_app/models/signup_model.dart';

class SignupPage extends ConsumerWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SignupModel signupModel = ref.watch(signupProvider);
    // final TextEditingController nameController = TextEditingController();
    // final TextEditingController userIdController = TextEditingController();
    // TextEditingController selfIntroductionController = TextEditingController();
    final TextEditingController emailController =
        TextEditingController(text: signupModel.email);
    final TextEditingController passwordController =
        TextEditingController(text: signupModel.password);

    return Scaffold(
      appBar: AppBar(
        title: Text('新規登録'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // RoundedTextField(
          //     keybordType: TextInputType.name,
          //     controller: nameController,
          //     color: Colors.white,
          //     borderColor: Colors.white,
          //     hintText: 'ユーザーネーム'),
          // SizedBox(
          //   height: 20,
          // ),
          // RoundedTextField(
          //     keybordType: TextInputType.name,
          //     controller: userIdController,
          //     color: Colors.white,
          //     borderColor: Colors.white,
          //     hintText: 'ユーザーID'),
          // SizedBox(
          //   height: 20,
          // ),
          // RoundedTextField(
          //     keybordType: TextInputType.name,
          //     controller: selfIntroductionController,
          //     color: Colors.white,
          //     borderColor: Colors.white,
          //     hintText: '自己紹介'),
          RoundedTextField(
              keybordType: TextInputType.emailAddress,
              onChanged: (text) => signupModel.email = text,
              controller: emailController,
              color: Colors.white,
              borderColor: Colors.grey,
              hintText: 'メールアドレス'),
          SizedBox(
            height: 20,
          ),
          RoundedPasswordField(
            obscureText: signupModel.isObscure,
            passwordEditingController: passwordController,
            onChanged: (text) => signupModel.password = text,
            toggleObscureText: () => signupModel.toggleIsObscure(),
            color: Colors.white,
            borderColor: Colors.grey,
          ),
          SizedBox(
            height: 20,
          ),
          RoundedButton(
              onPressed: () async {
                await signupModel.createUser(context: context);
                // routes.toHomeScreenPage(context: context);
              },
              widthRate: 0.4,
              color: Colors.blue,
              text: '登録')
        ],
      ),
    );
  }
}
