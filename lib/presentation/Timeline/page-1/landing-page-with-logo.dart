import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../screens/sign_in.dart';
import '../../page_one_screen/page_one_screen.dart';

class TimelineScreen extends StatefulWidget{
  const TimelineScreen({Key? key}) : super(key:key);
  @override
  _TimelineScreenState createState() => _TimelineScreenState();
}
class _TimelineScreenState extends State<TimelineScreen> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SafeArea(
      child:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          leading: Container(
            width: 90,
            height: 90,
            child: GestureDetector(child:Image.asset('assets/logo.png',),onTap: () {
              Navigator.push(context,MaterialPageRoute(builder:(context)=>  PageOneScreen()));
            },),
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
        body: Container(
          width: double.infinity,
          child: Container(
            // landingpagewithlogok3c (3:50)
            padding: EdgeInsets.fromLTRB(0 * fem, 7 * fem, 0 * fem, 0 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xfff5f5f5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  // yourprojecttimelineWVx (3:174)
                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                  width: double.infinity,
                  child: Text(
                    'Your Project Timeline',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.3 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  // stagesoEA (3:203)
                  width: double.infinity,
                  child: Text(
                    'Stages',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.3 * ffem / fem,
                      color: Color(0xff221d1d),
                    ),
                  ),
                ),
                Container(
                  // autogroupzdrouHC (KPQmQu27NEyqmJ2LeNzDro)
                  padding:
                  EdgeInsets.fromLTRB(31 * fem, 14 * fem, 21 * fem, 32 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // line1chQ (3:194)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 268.9 * fem, 26 * fem),
                        width: 1.1 * fem,
                        height: 1 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffd9d9d9),
                        ),
                      ),
                      Container(
                        // autogroupkkw3wUn (KPQjanQFqdC9sKjgXBKkW3)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 23 * fem),
                        width: double.infinity,
                        height: 50 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // ellipse2Ti2 (3:185)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 22 * fem, 0 * fem),
                              width: 18 * fem,
                              height: 16 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9 * fem),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                            Container(
                              // autogrouprfxbqia (KPQjjSpVMMB9aG3cXmRFxb)
                              width: 272 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Meeting with Consultant',
                                  style: TextStyle(
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.3 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupzpz1uTY (KPQjqwdfV9APrTn4YCzPZ1)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 23 * fem),
                        width: double.infinity,
                        height: 57 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // ellipse3Rwg (3:186)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 28 * fem, 0 * fem),
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9 * fem),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                            Container(
                              // autogroupngo1xRp (KPQk1c2EQNXagMRudKngo1)
                              padding: EdgeInsets.fromLTRB(
                                  24 * fem, 17 * fem, 24 * fem, 19 * fem),
                              width: 272 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Text(
                                'Quotation Submitted',
                                style: TextStyle(
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.3 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupjocj2ga (KPQk9MJKo3k4rkLkUvjocj)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 22 * fem),
                        width: double.infinity,
                        height: 57 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // ellipse4Myk (3:187)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 28 * fem, 0 * fem),
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9 * fem),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                            Container(
                              // autogroupz8f1JPC (KPQkG6c5nDaMvBugFzz8f1)
                              padding: EdgeInsets.fromLTRB(
                                  24 * fem, 12 * fem, 24 * fem, 24 * fem),
                              width: 272 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Text(
                                'Pay Booking Amount',
                                style: TextStyle(
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.3 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupwgrdz18 (KPQkM1dZXHsdvYgRj6wgRd)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 23 * fem),
                        width: double.infinity,
                        height: 57 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // ellipse56pr (3:188)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 28 * fem, 0 * fem),
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9 * fem),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                            Container(
                              // autogroupz1d12yQ (KPQkUB6HvknLx3yV7tz1D1)
                              width: 272 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Soil Test And Digital Survey',
                                  style: TextStyle(
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.3 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroup9zexwKg (KPQkYfxoFY1CzM26yH9ZEX)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 23 * fem),
                        width: double.infinity,
                        height: 57 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // ellipse64v6 (3:189)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 28 * fem, 0 * fem),
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9 * fem),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                            Container(
                              // autogroupvh5q1KY (KPQkekczy2v3JV2RMzvh5q)
                              padding: EdgeInsets.fromLTRB(
                                  21 * fem, 14 * fem, 21 * fem, 22 * fem),
                              width: 272 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Text(
                                'Floor Plans Finalised',
                                style: TextStyle(
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.3 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupysp7JJe (KPQkj5q7ituY9xBPNHySp7)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 23 * fem),
                        width: double.infinity,
                        height: 57 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // ellipse7d62 (3:190)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 3 * fem, 28 * fem, 0 * fem),
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9 * fem),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                            Container(
                              // autogroup5pdzMXp (KPQkpuzjb1yKgrMDzP5PDZ)
                              padding: EdgeInsets.fromLTRB(
                                  22 * fem, 15 * fem, 22 * fem, 21 * fem),
                              width: 272 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Text(
                                'Contractor Assigned',
                                style: TextStyle(

                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.3 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupolphSZG (KPQkuVhSCFosKZLfmJoLPh)
                        width: double.infinity,
                        height: 57 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // ellipse8PjQ (3:191)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 6 * fem, 28 * fem, 0 * fem),
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9 * fem),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                            Container(
                              // autogroupugo9vzE (KPQm1Ks44NserTWWPPuGo9)
                              padding: EdgeInsets.fromLTRB(
                                  22 * fem, 17 * fem, 22 * fem, 19 * fem),
                              width: 272 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Text(
                                'Project Activities Starts!',
                                style: TextStyle(
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.3 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),

      ),

    );
  }
}
