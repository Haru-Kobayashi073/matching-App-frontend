//flutter
import 'package:flutter/material.dart';

class UserImage extends StatelessWidget {
  const UserImage({
    Key? key,
    required this.length,
    required this.userAvater,
    // required this.image
  }) : super(key: key);
  final double length;
  final String userAvater;
  // final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return userAvater.isEmpty
        ? Container(
            width: length,
            height: length,
            // decoration: BoxDecoration(
            //     shape: BoxShape.circle, border: Border.all(color: Colors.grey)),
            child: Icon(
              Icons.account_circle_rounded,
              size: length * 0.75,
            ),
          )
        : Container(
            width: length,
            height: length,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill, image: NetworkImage(userAvater)),
            ),
          );
    // CircleImage(length: length, image: NetworkImage(userImageURL));
  }
}
