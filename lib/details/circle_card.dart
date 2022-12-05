import 'package:flutter/material.dart';

class CircleCard extends StatelessWidget {
  const CircleCard({super.key, required this.circleName});
  final String circleName;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0),
        )),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Text(
          circleName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ));
  }
}
