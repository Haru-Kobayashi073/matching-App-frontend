//flutter
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matching_app/details/circle_card.dart';
//package
import 'package:riverpod/riverpod.dart';

class ClubScreen extends ConsumerWidget {
  const ClubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String circleName = 'Club';

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.search),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, int index) {
        return CircleCard(circleName: circleName);
      }),
    );
  }
}
