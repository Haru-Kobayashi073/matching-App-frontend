//flutter
import 'package:flutter/material.dart';

class UserImage extends StatelessWidget {
  const UserImage({
    Key? key,
    required this.length,
    required this.userImageURL,
    // required this.image
  }) : super(key: key);
  final double length;
  final String userImageURL;
  // final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return userImageURL.isEmpty
        ? Container(
            width: length,
            height: length,
            decoration: BoxDecoration(
                shape: BoxShape.circle, border: Border.all(color: Colors.grey)),
            child: Icon(
              Icons.person,
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
                  fit: BoxFit.fill, image: NetworkImage(userImageURL)),
            ),
          );
    // CircleImage(length: length, image: NetworkImage(userImageURL));
  }
}
