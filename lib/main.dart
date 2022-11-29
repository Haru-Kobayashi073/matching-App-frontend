import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:matching_app/constants/routes.dart' as routes;
import 'package:matching_app/details/rounded_button.dart';
import 'package:matching_app/firebase_options.dart';
import 'package:matching_app/models/main_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matching_app/models/signup_model.dart';
import 'package:matching_app/views/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MainModel mainModel = ref.watch(mainProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Matching for your hobby')
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello')
            ],
          ),
        ),
    );
  }
}
