import 'package:flutter/material.dart';
import 'package:matching_app/details/sns_drawer.dart';
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
    late FirestoreUser firestoreUser = mainModel.firestoreUser;

    final tags = [
      'お酒',
      'テニス',
      'アウトドア',
      '漫画',
      'スターウォーズ',
      '古着',
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.connect_without_contact,
          size: 36,
        ),
      ),
      drawer: SNSDrawer(
        mainModel: mainModel,
      ),
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(
              height: 30,
            ),
            UserImage(length: 180, userAvater: firestoreUser.userAvater),
            Text(
              firestoreUser.userName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            // Text(firestoreUser.userId),
            const SizedBox(
              height: 5,
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
            ),
            SizedBox(
              height: maxheight * 0.05,
            ),
            Container(
              width: maxWidth * 0.9,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: maxheight * 0.03,
                  ),
                  Wrap(
                    runSpacing: 16,
                    spacing: 12,
                    children: tags.map((tag) {
                      return InkWell(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(32)),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(32)),
                            border: Border.all(
                              width: 2,
                              color: const Color(0xff7a9bee),
                            ),
                          ),
                          child: Text(
                            tag,
                            style: const TextStyle(
                              color: Color(0xff7a9bee),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
