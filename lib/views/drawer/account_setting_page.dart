import 'package:flutter/material.dart';
import 'package:matching_app/constants/routes.dart' as routes;
import 'package:matching_app/models/main_model.dart';

class AccountSettingPage extends StatelessWidget {
  const AccountSettingPage({super.key, required this.mainModel});
  final MainModel mainModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("アカウント"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("アカウント編集"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              routes.toEditAccountPage(context: context, mainModel: mainModel);
            },
          ),
          ListTile(
            title: const Text("ログアウト"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              mainModel.logout(context: context, mainModel: mainModel);
            },
          ),
        ],
      ),
    );
  }
}
