import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../screens/sign_in.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 75,
        leading: Container(
          width: 90,
          height: 90,
          child: Image.asset('assets/logo.png'),
        ),
        title: Text('All The Way Home',
            style: TextStyle(
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
      bottomNavigationBar: GNav(tabs: [
        GButton(icon: Icons.home, text: 'Home'),
        GButton(icon: Icons.question_mark_outlined, text: 'Queries'),
        GButton(icon: Icons.payment_outlined, text: 'Payments'),
      ]),
    );
  }
}
