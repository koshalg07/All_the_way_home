import 'package:all_the_way_home/screens/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../presentation/page_one_screen/page_one_screen.dart';

class Quotation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          leading: Container(
            width: 90,
            height: 90,
            child: Image.asset('assets/logo.png'),
          ),

          title: Text('All The Way Home',
              style:TextStyle(
                color: Colors.black,
              )),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              color: Colors.black,
              icon: Icon(Icons.menu,size:30),
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const SignInScreen()));
              },
            ),
          ],
        ),
        body: Center(
          child: Text('No Quotation provided yet!',style:TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          )),
        ),
        bottomNavigationBar:  GNav(
            tabs: [
              GButton(icon: Icons.home,
                text:'Home',onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>  PageOneScreen()));
                },),
              GButton(icon: Icons.question_mark_outlined,
                  text:'Queries'),
              GButton(icon: Icons.payment_outlined,
                  text:'Payments'),
            ]
        ),
      ),
    );
  }


}
