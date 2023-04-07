import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:log_in/utils/sharep.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset("assets/images/bg.jpeg", fit: BoxFit.cover,),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("Welcome", style: TextStyle(fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),)),
                ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black12),
                ),onPressed: () {
                  Share shr = Share();

                },child: Text("Log Out")),
              ],
            ),
          ]
      ),
    ),);
  }
}
