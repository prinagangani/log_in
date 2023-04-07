import 'package:flutter/material.dart';
import 'package:log_in/screens/home/view/home_view.dart';
import 'package:log_in/screens/sign_in/view/sign_in.dart';
import 'package:log_in/screens/sign_up/view/sign_up.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => SignIn(),
        'signup':(context) => SignUp(),
        'home':(context) => HomeView(),
      },
    ),
  );
}