import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../../../screens/sign_in.dart';
import '../../page_one_screen/page_one_screen.dart';
import '../utils.dart';


class QueriesScreen extends StatefulWidget{
  const QueriesScreen({Key? key}) : super(key:key);
  @override
  _QueriesScreenState createState() => _QueriesScreenState();
}
class _QueriesScreenState extends State<QueriesScreen> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SafeArea(
      child: Scaffold(
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
            // landingpagewithlogobSJ (39:2)
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupza1gTwg (6em4ibN6zHZn5P4nXzZA1G)
                  padding:
                  EdgeInsets.fromLTRB(32 * fem, 79 * fem, 25 * fem, 129 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupdavezAv (6em42CMkMjBhK9c3o6davE)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 90 * fem),
                        width: double.infinity,
                        height: 45 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupsk78tXC (6em492VhdMdfy17oViSK78)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 35 * fem, 0 * fem),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: 149 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xffff5f00),
                                    borderRadius: BorderRadius.circular(15 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'In Progress',
                                      style: SafeGoogleFont(
                                        'IBM Plex Sans',
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.3 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              // autogroupbs8ewdt (6em4DXNCx8rY1JARM6bs8e)
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 149 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xffd9d9d9),
                                  borderRadius: BorderRadius.circular(15 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Resolved',
                                    style: SafeGoogleFont(
                                      'IBM Plex Sans',
                                      fontSize: 18 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.3 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogrouplyhu1dk (6em4MgoGm79S9koPpRLyhU)
                        margin: EdgeInsets.fromLTRB(
                            40 * fem, 0 * fem, 47 * fem, 88 * fem),
                        padding: EdgeInsets.fromLTRB(
                            35.5 * fem, 44 * fem, 39.5 * fem, 18 * fem),
                        width: double.infinity,
                        height: 159 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 2 * fem,
                            ),
                          ],
                        ),
                        child: Center(
                          // queriesorconcernsnotfound3qL (101:54)
                          child: SizedBox(
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: 171 * fem,
                              ),
                              child: Text(
                                'Queries or Concerns \nNot found',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'IBM Plex Sans',
                                  fontSize: 18 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.3 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupdl2eWU2 (6em4SMLAeobfNsjfWtdL2E)
                        margin: EdgeInsets.fromLTRB(
                            6 * fem, 0 * fem, 13 * fem, 0 * fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 45 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xffff5f00),
                              borderRadius: BorderRadius.circular(15 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'Raise Concerns/Queries',
                                style: SafeGoogleFont(
                                  'IBM Plex Sans',
                                  fontSize: 18 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.3 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
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
