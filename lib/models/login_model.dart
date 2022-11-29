//flutter
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matching_app/constants/routes.dart' as routes;

final loginProvider = ChangeNotifierProvider((ref) => LoginModel());

class LoginModel extends ChangeNotifier {
  //auth
  String email = '';
  String password = '';
  bool isObscure = true;

  Future<void> login({required BuildContext context}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      //ログインする ->　mainModelのcurrentUserが更新される
      routes.toHomeScreenPage(context: context);
      //モデルを跨いで処理をするのはあまり綺麗ではない
      //ログインされた瞬間にmainModelのcurrentUserが更新されるのは難しい
      //なのでMyHomePageが描画された時に、MainModelを起動し、ユーザー情報を更新すればいい
    } on FirebaseAuthException catch (e) {
      print(email);
      print('ログインに失敗しました');
      print(e.toString());
    }
  }

  void toggleIsObscure() {
    isObscure = !isObscure;
    //！でboolを反転
    notifyListeners();
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }
}
