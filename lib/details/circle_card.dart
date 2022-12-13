import 'package:flutter/material.dart';

class CircleCard extends StatelessWidget {
  const CircleCard({super.key, required this.circleName});
  final String circleName;

  @override
  Widget build(BuildContext context) {
  final maxheight = MediaQuery.of(context).size.height;

    return Container(
      height: maxheight * 0.09,
        decoration: const BoxDecoration(
            border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0),
        )),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                circleName,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Row(
                children: const [
                  Icon(Icons.person),
                  Text('7', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
                ],
              )
            ],
          ),
        ));
  }
}
