import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:log_in/utils/sharep.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
            child: Image.asset("assets/images/bg1.jpg", fit: BoxFit.cover,),),
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 8, right: 8),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(controller: txtemail,
                    decoration: InputDecoration(border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        hintText: "Email",
                        suffix: Icon(Icons.email)),),
                  SizedBox(height: 15,),
                  TextField(controller: txtpass,
                    decoration: InputDecoration(border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        hintText: "Password",
                        suffix: Icon(Icons.lock)),),
                  SizedBox(height: 25,),
                  ElevatedButton(style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange)),
                    onPressed: () async {
                      String uemail = txtemail.text;
                      String upass = txtpass.text;
                      Share shr = Share();
                      Map m1 = await shr.read();
                        if(uemail==m1['e']&&upass==m1['p'])
                          {
                            shr.create(txtemail.text, txtpass.text,true);
                            Navigator.pushNamed(context, 'home');
                          }
                        else
                          {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Id or Password"),backgroundColor: Colors.blue.shade600),);
                          }
                    },
                    child: Text("Login", style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have account ?", style: TextStyle(
                          letterSpacing: 1, fontWeight: FontWeight.bold),),
                      TextButton(onPressed: () {
                        Navigator.pushNamed(context, 'signup');
                      }, child: Text("Sign Up", style: TextStyle(
                          color: Colors.green.shade900,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),)),
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


