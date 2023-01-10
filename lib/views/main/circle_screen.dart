//flutter
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matching_app/details/circle_card.dart';
import 'package:matching_app/details/sns_drawer.dart';
import 'package:matching_app/models/main_model.dart';
//package

class ClubScreen extends ConsumerWidget {
  const ClubScreen({Key? key, required this.mainModel}) : super(key: key);
  final MainModel mainModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.search),
      ),
      drawer: SNSDrawer(mainModel: mainModel),
      appBar: AppBar(
        title: const Text("Club"),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, int index) {
            return const CircleCard(circleName: "Club");
          }),
    );
  }
}
