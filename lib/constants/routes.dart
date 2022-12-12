import 'package:flutter/material.dart';
import 'package:matching_app/main.dart';
import 'package:matching_app/models/main_model.dart';
import 'package:matching_app/views/drawer/edit_account_page.dart';
import 'package:matching_app/views/login_page.dart';
import 'package:matching_app/views/main/home_screen.dart';
import 'package:matching_app/views/signup_page.dart';

void toSignupPage({required BuildContext context}) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => SignupPage()));

void toLoginPage({required BuildContext context, required MainModel mainModel}) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => LoginPage(mainModel: mainModel,)));

void toHomeScreenPage({required BuildContext context, required MainModel mainModel}) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => HomeScreen(mainModel: mainModel,)));

void toEditAccountPage({required BuildContext context, required MainModel mainModel}) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => EditAccountPage(mainModel: mainModel,)));
