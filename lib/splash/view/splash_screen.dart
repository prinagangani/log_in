
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:log_in/utils/sharep.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: FlutterLogo(
        size: 100,
      ),
    ),);
  }
  Future<void> check()
  async{
    Share shr = Share();
    Map map = await shr.read();

    if(map['islogin']==true)
      {
        Timer(
          Duration(seconds: 3),
          () => Navigator.pushReplacementNamed(context, 'home'),
        );
      }
    else
      {
        Timer(
          Duration(seconds: 3),
          () => Navigator.pushReplacementNamed(context, 'signup'),
        );
      }
  }

}
