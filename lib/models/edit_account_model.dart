//flutter
import 'package:flutter/material.dart';
//packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matching_app/constants/routes.dart' as routes;
import 'package:matching_app/models/main_model.dart';

final editAccountProvider = ChangeNotifierProvider((ref) => EditAccountModel());

class EditAccountModel extends ChangeNotifier {
  Future<void> updateUserInfo(
      {required BuildContext context, required MainModel mainModel}) async {
    // routes.toHomeScreenPage(context: context, mainModel: mainModel);
    Navigator.pop(context);
  }
}
