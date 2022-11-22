import 'package:flutter/material.dart';
import 'package:matching_app/views/login_page.dart';
import 'package:matching_app/views/signup_page.dart';

void toSignupPage({required BuildContext context}) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => SignupPage()));

void toLoginPage({required BuildContext context}) => Navigator.push(
    context, MaterialPageRoute(builder: (context) =>LoginPage()));