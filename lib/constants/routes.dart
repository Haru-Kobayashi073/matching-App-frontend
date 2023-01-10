import 'package:flutter/material.dart';
import 'package:matching_app/main.dart';
import 'package:matching_app/models/main_model.dart';
import 'package:matching_app/views/drawer/account/edit_account_page.dart';
import 'package:matching_app/views/drawer/account_setting_page.dart';
import 'package:matching_app/views/login_page.dart';
import 'package:matching_app/views/main/home_screen.dart';
import 'package:matching_app/views/signup_page.dart';

void toMyAppPage({required BuildContext context}) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => const MyApp()));

void toMyHomePage({required BuildContext context}) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => const MyHomePage()));

void toSignupPage({required BuildContext context}) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => SignupPage()));

void toLoginPage({required BuildContext context, required MainModel mainModel}) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => LoginPage(mainModel: mainModel,)));

void toHomeScreenPage({required BuildContext context, required MainModel mainModel}) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => HomeScreen(mainModel: mainModel,)));

void toEditAccountPage({required BuildContext context, required MainModel mainModel}) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => EditAccountPage(mainModel: mainModel,)));

void toAccountSettingPage({required BuildContext context, required MainModel mainModel}) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => AccountSettingPage(mainModel: mainModel,)));
