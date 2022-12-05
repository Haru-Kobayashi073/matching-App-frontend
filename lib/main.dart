import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:matching_app/constants/routes.dart' as routes;
import 'package:matching_app/details/rounded_button.dart';
import 'package:matching_app/details/sns_bottom_navigation_bar.dart';
import 'package:matching_app/details/sns_drawer.dart';
import 'package:matching_app/firebase_options.dart';
import 'package:matching_app/models/main_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matching_app/models/signup_model.dart';
import 'package:matching_app/models/sns_bottom_navigation_bar_model.dart';
import 'package:matching_app/views/login_page.dart';
import 'package:matching_app/views/main/chat_screen.dart';
import 'package:matching_app/views/main/circle_screen.dart';
import 'package:matching_app/views/main/friend_screen.dart';
import 'package:matching_app/views/main/home_screen.dart';

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
    final User? onceUser = FirebaseAuth.instance.currentUser;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Matching-App',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: onceUser == null ? LoginPage() : MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MainModel mainModel = ref.watch(mainProvider);
    final SNSBottomNavigationBarModel snsBottomNavigationBarModel =
        ref.watch(snsBottomNavigationBarProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Match Hobby')),
      bottomNavigationBar: SNSBottomNavigationBar(
          snsBottomNavigationBarModel: snsBottomNavigationBarModel),
      drawer: SNSDrawer(),
      body: PageView(
        controller: snsBottomNavigationBarModel.pageController,
        onPageChanged: (index) =>
            snsBottomNavigationBarModel.onPageChanged(index: index),
        //childrenの数はElementsの数
        children: [
          //注意：ページじゃないのでScaffold
          HomeScreen(),
          FriendScreen(),
          ClubScreen(),
        ],
      ),
    );
  }
}
