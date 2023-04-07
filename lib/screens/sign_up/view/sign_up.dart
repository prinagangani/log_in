import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:log_in/utils/sharep.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpass = TextEditingController();

  @override

  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset("assets/images/bg.jpeg",fit: BoxFit.cover,),),
          Padding(
            padding: const EdgeInsets.only(top: 150,left: 8,right: 8),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(controller: txtemail,decoration: InputDecoration(border:OutlineInputBorder(),focusedBorder: OutlineInputBorder(),hintText: "Email",suffix: Icon(Icons.email)),),
                  SizedBox(height:15,),
                  TextField(controller: txtpass,decoration: InputDecoration(border:OutlineInputBorder(),focusedBorder: OutlineInputBorder(),hintText: "Password",suffix: Icon(Icons.lock)),),
                  SizedBox(height: 25,),
                  ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),onPressed: () {
                    var email = txtemail.text;
                    var passw = txtpass.text;
                    Share shr = Share();
                    shr.create(email, passw, false);
                    Navigator.pop(context);
                  }, child: Text("Register",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have account ?",style: TextStyle(letterSpacing: 1,fontWeight: FontWeight.bold),),
                      TextButton(onPressed: () {
                        Navigator.pop(context,);
                      }, child: Text("Sign In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 1),)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),);
  }
}
