import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../../../screens/sign_in.dart';
import '../../Queries/utils.dart';
import '../../page_one_screen/page_one_screen.dart';

class ResidentialScreen extends StatefulWidget{
  const ResidentialScreen({Key? key}) : super(key:key);
  @override
  _ResidentialScreenState createState() => _ResidentialScreenState();
}

class _ResidentialScreenState extends State<ResidentialScreen> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SafeArea(
      child:Scaffold(
        appBar:AppBar(
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
        body:Container(
          width: double.infinity,

          child: Container(
            // landingpagewithlogoXLW (39:2)
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // packagesUD8 (116:128)
                  margin: EdgeInsets.fromLTRB(0 * fem, 20 * fem, 1 * fem, 0 * fem),
                  child: Text(
                    'Packages',
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
                Container(
                  // autogroupbrxzxtz (FPVUisQ5jagPf92P2TBrxz)
                  padding:
                  EdgeInsets.fromLTRB(23 * fem, 19 * fem, 27 * fem, 93 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupkfulrDg (FPVT7FRQmoB6m6XfNsKFuL)
                        margin: EdgeInsets.fromLTRB(
                            14.5 * fem, 0 * fem, 3 * fem, 17 * fem),
                        width: double.infinity,
                        height: 40 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // locationV1k (113:14)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 9 * fem, 21.5 * fem, 0 * fem),
                              child: Text(
                                'LOCATION :',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'IBM Plex Sans',
                                  fontSize: 13 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.3 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // listboxmaincVg (115:39)
                              padding: EdgeInsets.fromLTRB(
                                  13.2 * fem, 13.33 * fem, 18.15 * fem, 6.67 * fem),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(8 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    offset: Offset(0 * fem, 4 * fem),
                                    blurRadius: 7 * fem,
                                  ),
                                ],
                              ),
                              child: DropdownButton<String?>(
                                value: 'Bangalore',
                                onChanged: (String? newValue) {},
                                items: [
                                  DropdownMenuItem<String>(
                                    value: 'Bangalore',
                                    child: Text('Bangalore'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Mysuru',
                                    child: Text('Mysuru'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Chennai',
                                    child: Text('Chennai'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Pune',
                                    child: Text('Pune'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupbudcE1G (FPVTMzVr124vnAqunBBuDC)
                        margin: EdgeInsets.fromLTRB(
                            3 * fem, 0 * fem, 0 * fem, 22 * fem),
                        height: 47 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupryd4Lpz (FPVTaKUdzw7xbGkCQhryD4)
                              padding: EdgeInsets.fromLTRB(
                                  21 * fem, 9 * fem, 19 * fem, 4 * fem),
                              width: 91 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xe0e35c11),
                                borderRadius: BorderRadius.circular(12 * fem),
                              ),
                              child: Center(
                                // budgetpackageSt2 (113:8)
                                child: SizedBox(
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 51 * fem,
                                    ),
                                    child: Text(
                                      'Budget Package',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'IBM Plex Sans',
                                        fontSize: 13 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.3 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 32 * fem,
                            ),
                            Container(
                              // autogroup9kxpX8n (FPVTez1XtdaBpPgU7B9KXp)
                              padding: EdgeInsets.fromLTRB(
                                  20 * fem, 10 * fem, 20 * fem, 3 * fem),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffd9d9d9),
                                borderRadius: BorderRadius.circular(12 * fem),
                              ),
                              child: Align(
                                // basicpackagedhc (113:9)
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 51 * fem,
                                    ),
                                    child: Text(
                                      'Basic Package',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'IBM Plex Sans',
                                        fontSize: 13 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.3 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 32 * fem,
                            ),
                            Container(
                              // autogroupc5mtWmQ (FPVTiUuhouQrjjPAt2c5mt)
                              padding: EdgeInsets.fromLTRB(
                                  19 * fem, 7 * fem, 21 * fem, 6 * fem),
                              width: 91 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffd9d9d9),
                                borderRadius: BorderRadius.circular(12 * fem),
                              ),
                              child: Center(
                                // classicpackage3FY (113:10)
                                child: SizedBox(
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 51 * fem,
                                    ),
                                    child: Text(
                                      'Classic Package',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'IBM Plex Sans',
                                        fontSize: 13 * ffem,
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
                      Container(
                        // autogroupfzsa9ZU (FPVTv4QkFgvkD7n2CfFZSA)
                        margin: EdgeInsets.fromLTRB(
                            3 * fem, 0 * fem, 0 * fem, 10 * fem),
                        height: 47 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogrouph2kkUbk (FPVU8tNhxMfsahMGNTH2Kk)
                              padding: EdgeInsets.fromLTRB(
                                  19 * fem, 8 * fem, 17 * fem, 5 * fem),
                              width: 91 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffd9d9d9),
                                borderRadius: BorderRadius.circular(12 * fem),
                              ),
                              child: Center(
                                // premiumpackagensL (113:11)
                                child: SizedBox(
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 55 * fem,
                                    ),
                                    child: Text(
                                      'Premium Package',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'IBM Plex Sans',
                                        fontSize: 13 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.3 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 32 * fem,
                            ),
                            Container(
                              // autogrouptbceVWr (FPVUDJR1zgH42aT4JHtBCe)
                              padding: EdgeInsets.fromLTRB(
                                  20 * fem, 7 * fem, 20 * fem, 6 * fem),
                              width: 91 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffd9d9d9),
                                borderRadius: BorderRadius.circular(12 * fem),
                              ),
                              child: Center(
                                // royalepackageR9c (113:12)
                                child: SizedBox(
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 51 * fem,
                                    ),
                                    child: Text(
                                      'Royale Package',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'IBM Plex Sans',
                                        fontSize: 13 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.3 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 32 * fem,
                            ),
                            Container(
                              // autogroupulbluKg (FPVUGt9PCQjQYL6azguLbL)
                              padding: EdgeInsets.fromLTRB(
                                  19 * fem, 7 * fem, 21 * fem, 6 * fem),
                              width: 91 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffd9d9d9),
                                borderRadius: BorderRadius.circular(12 * fem),
                              ),
                              child: Center(
                                // imperiapackageRYv (113:13)
                                child: SizedBox(
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 51 * fem,
                                    ),
                                    child: Text(
                                      'Imperia Package',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'IBM Plex Sans',
                                        fontSize: 13 * ffem,
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
                      Container(
                        child: Text('Details of the package:₹1500/sq.ft'),
                      ),
                      Container(
                        // listboxmainjpW (116:129)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 6 * fem, 3 * fem, 12.6 * fem),
                        padding: EdgeInsets.fromLTRB(
                            19 * fem, 0 * fem, 26.48 * fem, 0 * fem),
                        width: double.infinity,
                        height: 25.19 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(8 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x19000000),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 7 * fem,
                            ),
                          ],
                        ),
                        child: DropdownButton<String?>(
                          value: 'Designs & Drawings',
                          onChanged: (String? newValue) {},
                          items: [
                            DropdownMenuItem<String>(
                              value: 'Designs & Drawings',
                              child: Text('Designs & Drawings'),
                            ),
                            DropdownMenuItem<String>(
                              value: '2D',
                              child: Text('->Architecture layout'),
                            ),
                            DropdownMenuItem<String>(
                              value: '3D',
                              child: Text('->Archetectural Visualisation-3D view'),
                            ),
                            DropdownMenuItem<String>(
                              value: '4D',
                              child: Text('->Structural Design'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // listboxmainjxv (116:149)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 3 * fem, 12.6 * fem),
                        padding: EdgeInsets.fromLTRB(
                            19 * fem, 0 * fem, 26.48 * fem, 0 * fem),
                        width: double.infinity,
                        height: 25.19 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(8 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x19000000),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 7 * fem,
                            ),
                          ],
                        ),
                        child: DropdownButton<String?>(
                          value: 'Structure',
                          onChanged: (String? newValue) {},
                          items: [
                            DropdownMenuItem<String>(
                              value: 'Structure',
                              child: Text('Structure'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item2',
                              child: Text('->Steel-Sunvik,Meenakshi,Kamdhenu '),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item3',
                              child: Text('->Aggregates-20mm & 40mm'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item4',
                              child: Text('->Blocks-Standard solid Concrete'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item5',
                              child: Text('->Cement-Dalmia,Coromandal etc'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // listboxmainMjQ (116:154)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 3 * fem, 12.6 * fem),
                        padding: EdgeInsets.fromLTRB(
                            19 * fem, 0 * fem, 26.48 * fem, 0 * fem),
                        width: double.infinity,
                        height: 25.19 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(8 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x19000000),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 7 * fem,
                            ),
                          ],
                        ),
                        child: DropdownButton<String?>(
                          value: 'Kitchen',
                          onChanged: (String? newValue) {},
                          items: [
                            DropdownMenuItem<String>(
                              value: 'Kitchen',
                              child: Text('Kitchen'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item2',
                              child: Text('->Ceramic walls tiles-2feet above slab'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item3',
                              child: Text('->Main sink Faucet-upto Rs.1300'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item4',
                              child: Text('->ISI Marked Faucet'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item5',
                              child: Text('->Kitchen sink-Stainless steel'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // listboxmainykn (116:158)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 3 * fem, 14.89 * fem),
                        padding: EdgeInsets.fromLTRB(
                            19 * fem, 0 * fem, 26.48 * fem, 0 * fem),
                        width: double.infinity,
                        height: 25.19 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(8 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x19000000),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 7 * fem,
                            ),
                          ],
                        ),
                        child: DropdownButton<String?>(
                          value: 'Bathroom',
                          onChanged: (String? newValue) {},
                          items: [
                            DropdownMenuItem<String>(
                              value: 'Bathroom',
                              child: Text('Bathroom'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item2',
                              child: Text('->Bathroom ceramic wall tiles- 7 Feet'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item3',
                              child: Text('->Sanitory ware & CP'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item4',
                              child: Text('->CPVC Pipe-Astral '),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item5',
                              child: Text('->Waterproof flush doors'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // listboxmainzQz (116:164)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 3 * fem, 12.6 * fem),
                        padding: EdgeInsets.fromLTRB(
                            19 * fem, 0 * fem, 26.48 * fem, 0 * fem),
                        width: double.infinity,
                        height: 25.19 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(8 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x19000000),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 7 * fem,
                            ),
                          ],
                        ),
                        child: DropdownButton<String?>(
                          value: 'Doors & Windows',
                          onChanged: (String? newValue) {},
                          items: [
                            DropdownMenuItem<String>(
                              value: 'Doors & Windows',
                              child: Text('Doors & Windows'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item2',
                              child: Text('->Windows-Aluminium with glass'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item3',
                              child: Text('->Main Door-Sandalwood frame 5*3in'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item4',
                              child: Text('->Internal doors-Membrane doors'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item5',
                              child: Text('->Flush door with laminates'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // listboxmainodL (116:168)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 3 * fem, 12.6 * fem),
                        padding: EdgeInsets.fromLTRB(
                            19 * fem, 0 * fem, 26.48 * fem, 0 * fem),
                        width: double.infinity,
                        height: 25.19 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(8 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x19000000),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 7 * fem,
                            ),
                          ],
                        ),
                        child: DropdownButton<String?>(
                          value: 'Painting',
                          onChanged: (String? newValue) {},
                          items: [
                            DropdownMenuItem<String>(
                              value: 'Painting',
                              child: Text('Painting'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item2',
                              child: Text('->Interior-JK Putty+Emulsion'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item3',
                              child: Text('->Exteriors-Asian Primer or equivalent'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item4',
                              child: Text('->Ace exterior emulsion'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // listboxmainDwx (116:172)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 3 * fem, 12.6 * fem),
                        padding: EdgeInsets.fromLTRB(
                            19 * fem, 0 * fem, 26.48 * fem, 0 * fem),
                        width: double.infinity,
                        height: 25.19 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(8 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x19000000),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 7 * fem,
                            ),
                          ],
                        ),
                        child: DropdownButton<String?>(
                          value: 'Flooring',
                          onChanged: (String? newValue) {},
                          items: [
                            DropdownMenuItem<String>(
                              value: 'Flooring',
                              child: Text('Flooring'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item2',
                              child: Text('->Living and Dining flooring'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item3',
                              child: Text('->Rooms and Kitchen flooring'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item4',
                              child: Text('->Balcony and open area floor no-skid'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item5',
                              child: Text('->Staircase flooring'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // listboxmainRo8 (116:176)
                        margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            19 * fem, 0 * fem, 26.48 * fem, 0 * fem),
                        width: double.infinity,
                        height: 25.19 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(8 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x19000000),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 7 * fem,
                            ),
                          ],
                        ),
                        child: DropdownButton<String?>(
                          value: 'Electrical',
                          onChanged: (String? newValue) {},
                          items: [
                            DropdownMenuItem<String>(
                              value: 'Electrical',
                              child: Text('Electrical'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item2',
                              child: Text('->Wires-Fireproof by Finolex'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item3',
                              child: Text('->Switches and sockets-Anchor Roma'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item4',
                              child: Text('Item4'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Item5',
                              child: Text('Item5'),
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
        )
      ),
    );
  }
}
