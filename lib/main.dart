import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:matching_app/constants/routes.dart' as routes;
import 'package:matching_app/details/rounded_button.dart';
import 'package:matching_app/firebase_options.dart';
import 'package:matching_app/views/login_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Matching-App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}