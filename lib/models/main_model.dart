//flutter
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
//packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matching_app/domain/firestore_user/firestore_user.dart';
import 'package:uuid/uuid.dart';

final mainProvider = ChangeNotifierProvider((ref) => MainModel());

class MainModel extends ChangeNotifier {
  Future<void> createUser({required BuildContext context}) async {
    final uuid = Uuid();
    final String v4 = uuid.v4();
    final Timestamp now = Timestamp.now();
    final FirestoreUser firestoreUser = FirestoreUser(
      createdAt: now,
      uid: v4,
      updatedAt: now,
      userName: "Alice",
    );
    final Map<String,dynamic> userData = firestoreUser.toJson();
    await FirebaseFirestore.instance.collection("users").doc(v4).set(userData);
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('ユーザーが作成できました')));
    notifyListeners();
  }
}
