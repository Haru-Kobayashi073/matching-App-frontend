import 'package:flutter/material.dart';

class SNSDrawer extends StatelessWidget {
  const SNSDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title:  Text('account'),
            onTap: () {}
          ),
        ],
      ),
    );
  }
}