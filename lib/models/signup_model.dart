//flutter
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matching_app/domain/firestore_user/firestore_user.dart';
import 'package:firebase_auth/firebase_auth.dart';

final signupProvider = ChangeNotifierProvider((ref) => SignupModel());

class SignupModel extends ChangeNotifier {
  int counter = 0;
  User? currentUser;
  // auth

  String email = "";
  String password = "";
  bool isObscure = true;

  Future<void> createFirestoreUser(
      {required BuildContext context, required String userId}) async {
    final Timestamp now = Timestamp.now();
    final FirestoreUser firestoreUser = FirestoreUser(
      createdAt: now,
      email: email,
      userId: userId,
      updatedAt: now,
      userName: "Alice",
    );
    final Map<String, dynamic> userData = firestoreUser.toJson();
    await FirebaseFirestore.instance
        .collection("users")
        .doc(userId)
        .set(userData);
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('ユーザーが作成できました')));
    notifyListeners();
  }

  Future<void> createUser({required BuildContext context}) async {
    try {
      final result = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      final User? user = result.user;
      final String userId = user!.uid;
      await createFirestoreUser(context: context, userId: userId);
      print('ユーザーが作成されました');
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());
    }
  }

  void toggleIsObscure() {
    isObscure = !isObscure;
    notifyListeners();
  }
}
