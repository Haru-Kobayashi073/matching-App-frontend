//flutter
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
//packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matching_app/domain/firestore_user/firestore_user.dart';
import 'package:uuid/uuid.dart';

final mainProvider = ChangeNotifierProvider((ref) => MainModel());

class MainModel extends ChangeNotifier {
  bool isLoading = false;

  int counter = 0;
  late User? currentUser;
  late DocumentSnapshot<Map<String, dynamic>> currentUserDoc;
  //Snapshotは簡単に言うとusersが持つドキュメント5行ぐらいのこと
  //jsonみたいなものでもある
  late FirestoreUser firestoreUser;

  //以下関数がMainModelが起動した時の処理
  //ユーザーの動作を必要としないモデルの関数
  MainModel() {
    initialization();
    init();
  }

  void initialization() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    // ignore_for_file: avoid_print
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }

  //initの中でcurrentUserを更新すればいい
  Future<void> init() async {
    startLoading();
    //modelを跨がないでcurrentUserの更新
    currentUser = FirebaseAuth.instance.currentUser;
    currentUserDoc = await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUser!.uid)
        .get();
    // await distributeTokens();
    firestoreUser = FirestoreUser.fromJson(currentUserDoc.data()!);
    endLoading();
    //currentUserのuidの取得が可能になりました
  }

  void startLoading() {
    isLoading = true;
    notifyListeners();
  }

  void endLoading() {
    isLoading = false;
    notifyListeners();
  }

  void setCurrentUser() {
    currentUser = FirebaseAuth.instance.currentUser;
    notifyListeners();
  }

  void updateFrontUserInfo({required String newUserName, required String newUserImageURL}) {
    //firestoreUserの中身を現在の現在のfirestoreUserをほぼコピーしてuserNameだけ変更したものに更新
    firestoreUser = firestoreUser.copyWith(userName: newUserName, userAvater: newUserImageURL);
    notifyListeners();
  }
}
