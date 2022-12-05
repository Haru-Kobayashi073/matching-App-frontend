//flutter
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matching_app/details/user_card.dart';
import 'package:matching_app/domain/firestore_user/firestore_user.dart';
//package
import 'package:riverpod/riverpod.dart';

class FriendScreen extends ConsumerWidget {
  const FriendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FirestoreUser firestoreUser = FirestoreUser(
        createdAt: Timestamp.now(),
        updatedAt: Timestamp.now(),
        userName: 'User',
        userId: '123',
        email: '');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.search),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, int index) {
        return UserCard(accountName: firestoreUser.userName,);
      }),
    );
  }
}
