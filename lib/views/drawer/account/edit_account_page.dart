//flutter
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matching_app/details/rounded_button.dart';
import 'package:matching_app/details/rounded_text_field.dart';
import 'package:matching_app/domain/firestore_user/firestore_user.dart';
import 'package:matching_app/models/edit_account_model.dart';
import 'package:matching_app/models/main_model.dart';
import 'package:matching_app/constants/routes.dart' as routes;

class EditAccountPage extends ConsumerWidget {
  const EditAccountPage({Key? key, required this.mainModel}) : super(key: key);
  final MainModel mainModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final maxheight = MediaQuery.of(context).size.height;
    final TextEditingController textEditingController = TextEditingController();
    final EditAccountModel editAccountModel = ref.watch(editAccountProvider);
    final FirestoreUser firestoreUser = mainModel.firestoreUser;

    return Scaffold(
      appBar: AppBar(title: const Text('プロフィール編集')),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.account_circle_rounded,
                size: 120,
              ),
            ),
            RoundedTextField(
                keybordType: TextInputType.text,
                onChanged: (value) => editAccountModel.userName = value,
                controller: textEditingController,
                color: Colors.white,
                borderColor: Colors.grey,
                hintText: firestoreUser.userName),
            SizedBox(
              height: maxheight * 0.05,
            ),
            RoundedButton(
                onPressed: () async => await editAccountModel.updateUserInfo(
                    context: context, mainModel: mainModel),
                widthRate: 0.5,
                color: const Color(0xff7a9bee),
                text: '更新')
          ],
        ),
      ),
    );
  }
}
