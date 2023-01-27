
import 'package:all_the_way_home/core/app_export.dart';
import 'package:all_the_way_home/presentation/page_one_screen/page_one_screen.dart';
import 'package:all_the_way_home/screens/profile_page.dart';
import 'package:all_the_way_home/screens/sign_up.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

import '../presentation/home_page_screen/home_page_screen.dart';
import '../reusable_widgets/reusable_widget.dart';
import 'Home_page.dart';


class SignInScreen extends StatefulWidget{
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}
class _SignInScreenState extends State<SignInScreen>{
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child:Column(
              children: <Widget>[
                logoWidget("assets/logo.png"),
                const SizedBox(
                  height:30,
                ),
                reusableTextField("Enter Email-id",Icons.person_outline,false,_emailTextController),
                const SizedBox(
                  height:20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true, _passwordTextController),
                const SizedBox(
                  height:20,
                ),
                signInSignUpButton(context, true, () {
                  FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text).then((value) {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> PageOneScreen()));
                  }).onError((error, stackTrace) {
                    showDialog(context: context,
                        barrierDismissible: false,
                        builder: (BuildContext){
                          return AlertDialog(
                            title: const Text('Invalid Credentials'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: const <Widget>[
                                  Text('Enter Credentials Again')
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(onPressed: () {Navigator.of(context).pop();}, child: const Text('Enter again'))
                            ],
                          );
                        });
                  });
                  }),
                signUpOption()
              ],
            ),
          )
        ),
      ),

    );

  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        const Text("Don't have account?",
        style:TextStyle(color: Colors.black)),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            "  Sign Up",
            style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold),
          )
        )
      ]
    );
  }
}
