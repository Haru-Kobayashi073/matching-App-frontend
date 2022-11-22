import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:matching_app/constants/routes.dart' as routes;
import 'package:matching_app/firebase_options.dart';

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
      home: const MyHomePage(title: 'Matching for Your Hobby'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          TextButton(
              onPressed: () => routes.toSignupPage(context: context),
              child: Text(
                '新規登録',
                style: TextStyle(color: Colors.white),
              )),
          TextButton(
              onPressed: () => routes.toLoginPage(context: context),
              child: Text(
                'ログイン',
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
      body: Center(),
    );
  }
}
