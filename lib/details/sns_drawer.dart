import 'package:flutter/material.dart';
import 'package:matching_app/constants/routes.dart' as routes;
import 'package:matching_app/models/main_model.dart';
import 'package:matching_app/views/list_select_page.dart';

class SNSDrawer extends StatelessWidget {
  const SNSDrawer({super.key, required this.mainModel});
  final MainModel mainModel;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('account'),
            onTap: () =>
                routes.toAccountSettingPage(context: context, mainModel: mainModel),
          ),
          ListTile(
            title: const Text('admin'),
            onTap: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) => DemoPage()))
          ),
        ],
      ),
    );
  }
}
