import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:matching_app/constants/routes.dart' as routes;
import 'package:matching_app/details/sns_bottom_navigation_bar.dart';
import 'package:matching_app/details/sns_drawer.dart';
import 'package:matching_app/firebase_options.dart';
import 'package:matching_app/models/main_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matching_app/models/sns_bottom_navigation_bar_model.dart';
import 'package:matching_app/views/login_page.dart';
import 'package:matching_app/views/main/circle_screen.dart';
import 'package:matching_app/views/main/friend_screen.dart';
import 'package:matching_app/views/main/home_screen.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const int _0xff7a9beePrimaryValue = 0xff7a9bee;
    const MaterialColor customSwatch = MaterialColor(
      _0xff7a9beePrimaryValue,
      <int, Color>{
        50: Color(0xFFE8EAF6),
        100: Color(0xFFC5CAE9),
        200: Color(0xFF9FA8DA),
        300: Color(0xFF7986CB),
        400: Color(0xFF5C6BC0),
        500: Color(_0xff7a9beePrimaryValue),
        600: Color(0xFF3949AB),
        700: Color(0xFF303F9F),
        800: Color(0xFF283593),
        900: Color(0xFF1A237E),
      },
    );
    // MyAppが起動した最初の時にユーザーがログインしているかどうかの確認
    //この変数を一回きり
    final User? onceUser = FirebaseAuth.instance.currentUser;
    final MainModel mainModel = ref.watch(mainProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Matching-App',
      theme: ThemeData(
        primarySwatch: customSwatch,
      ),
      home: onceUser == null ? LoginPage(mainModel: mainModel,) : const MyHomePage(),
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
      // appBar: AppBar(title: const Text('Match Hobby')),
      bottomNavigationBar: SNSBottomNavigationBar(
          snsBottomNavigationBarModel: snsBottomNavigationBarModel),
      drawer: SNSDrawer(
        mainModel: mainModel,
      ),
      body: mainModel.isLoading
          ? const Center(
              child: Text('Loading...'),
            )
          : PageView(
        controller: snsBottomNavigationBarModel.pageController,
        onPageChanged: (index) =>
            snsBottomNavigationBarModel.onPageChanged(index: index),
        //childrenの数はElementsの数
        children: [
          //注意：ページじゃないのでScaffold
          HomeScreen(mainModel: mainModel,),
          FriendScreen(mainModel: mainModel,),
          ClubScreen(mainModel: mainModel,),
        ],
      ),
    );
  }
}
