import 'package:flutter/material.dart';
import 'package:matching_app/details/user_image.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:matching_app/domain/firestore_user/firestore_user.dart';
import 'package:matching_app/main.dart';
import 'package:matching_app/models/main_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.mainModel});
  final MainModel mainModel;

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxheight = MediaQuery.of(context).size.height;
    final FirestoreUser firestoreUser = mainModel.firestoreUser;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.search),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.account_circle_rounded,
                size: 120,
              ),
            ),
            Text(
              firestoreUser.userName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: maxheight * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Text(
                      '0',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'フレンド',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      '0',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '参加サークル',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
