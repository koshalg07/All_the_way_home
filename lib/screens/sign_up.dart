
import 'package:all_the_way_home/presentation/page_one_screen/page_one_screen.dart';
import 'package:all_the_way_home/reusable_widgets/reusable_widget.dart';
import 'package:all_the_way_home/screens/sign_in.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


import '../presentation/home_page_screen/home_page_screen.dart';


class SignUpScreen extends StatefulWidget{
  const SignUpScreen({Key? key}) : super(key:key);
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}
class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _confirmPasswordTextController = TextEditingController();
  TextEditingController _nameTextController = TextEditingController();
  TextEditingController _addressTextController = TextEditingController();
  TextEditingController _phoneTextController = TextEditingController();
  Future addUserDetails(String _addressTextController,String _nameTextController,String _phoneTextController,String _emailTextController) async{

    Map<String,String> dataToSave={
    'address':_addressTextController,
    'name': _nameTextController,
    'phone':_phoneTextController,
      'email':_emailTextController,
    };
    await FirebaseFirestore.instance.collection('user').add(dataToSave)
        .then((value){
    Navigator.push(context,
    MaterialPageRoute(builder: (context)=> SignInScreen()));
    }
    );
  }
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation:0,
        title:const Text(
          "Sign Up",
          style:TextStyle(fontSize:24,fontWeight:FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20,120,20,0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height:20,
                ),
                logoWidget2("assets/logo.png"),
                reusableTextField("Enter Name", Icons.person_outline, false, _nameTextController),
                const SizedBox(
                  height:20,
                ),
                reusableTextField("Enter Address", Icons.home_outlined, false, _addressTextController),
                const SizedBox(
                  height:20,
                ),
                reusableTextField("Enter Phone Number", Icons.phone_callback_outlined, false, _phoneTextController),
                const SizedBox(
                  height:20,
                ),
                reusableTextField("Enter Email", Icons.mail_outline_outlined, false, _emailTextController),
                const SizedBox(
                  height:20,
                ),
                reusableTextField("Enter Password", Icons.lock_outlined, true, _passwordTextController),
                const SizedBox(
                  height:20,
                ),
                reusableTextField("Confirm Password", Icons.lock_outlined, true, _confirmPasswordTextController),
                const SizedBox(
                  height:20,
                ),
                signInSignUpButton(context, false, (){
                  if(_passwordTextController.text.trim() == _confirmPasswordTextController.text.trim()){
                    FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: _emailTextController.text,
                        password: _passwordTextController.text
                    ).then((value) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> SignInScreen()));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                    //add user details
                    addUserDetails(_addressTextController.text.trim(), _nameTextController.text.trim(), _phoneTextController.text.trim(),_emailTextController.text.trim());
                  }
                  else{
                    showDialog(context: context,
                        barrierDismissible: false,
                        builder: (BuildContext){
                          return AlertDialog(
                            title: const Text('Password mismatch'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: const <Widget>[
                                  Text('Enter the same passwords in both text fields')
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(onPressed: () {Navigator.of(context).pop();}, child: const Text('Enter again'))
                            ],
                          );
                        });
                  }
                })
              ],
            )
          )
        ),
      ),
    );
  }
}
