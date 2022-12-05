import 'package:flutter/material.dart';
import 'package:matching_app/details/user_image.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.accountName});
  final String accountName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Colors.grey, width: 0),
      )),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.person,
                  size: 48,
                ),
              ),
              Column(
                children: [
                  Text(
                    accountName,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 5,),
                  const Text('Hello'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// UserImage(
//                     length: 48,
//                     userImageURL: post.uid == mainModel.firestoreUser.uid
//                         ? mainModel.firestoreUser.userImageURL
//                         : post.imageURL),
