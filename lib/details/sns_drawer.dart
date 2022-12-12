import 'package:flutter/material.dart';
import 'package:matching_app/constants/routes.dart' as routes;
import 'package:matching_app/models/main_model.dart';

class SNSDrawer extends StatelessWidget {
  const SNSDrawer({super.key, required this.mainModel});
  final MainModel mainModel;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('account'),
            onTap: () =>
                routes.toEditAccountPage(context: context, mainModel: mainModel),
          ),
        ],
      ),
    );
  }
}
