import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../../Queries/utils.dart';

class PaymentScreen extends StatefulWidget{
  const PaymentScreen({Key? key}) : super(key:key);
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SafeArea(child: Scaffold(

        body:Container(
          width: double.infinity,
          child: Container(
            // landingpagewithlogoPXg (28:64)
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xfff5f5f5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(
                  // autogroupkyettgi (K683w1KGVnSWErqvnjkYeT)
                  padding:
                  EdgeInsets.fromLTRB(5 * fem, 13 * fem, 10 * fem, 14 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // frame34907DDC (28:66)
                        margin: EdgeInsets.fromLTRB(
                            26 * fem, 0 * fem, 22 * fem, 13 * fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // frame348967Ja (28:67)
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // credidebitcards5ei (28:68)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                    width: double.infinity,
                                    child: Text(
                                      'Credi & Debit Cards',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Satoshi',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2575 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // frame34893xCi (28:69)
                                    padding: EdgeInsets.fromLTRB(
                                        16 * fem, 16 * fem, 6 * fem, 16 * fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xfff5f5f5)),
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(16 * fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x14000000),
                                          offset: Offset(0 * fem, 8 * fem),
                                          blurRadius: 8 * fem,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // frame34916qGW (28:70)
                                          margin: EdgeInsets.fromLTRB(
                                              0 * fem, 0 * fem, 0 * fem, 12 * fem),
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // frame34909xc2 (28:71)
                                                margin: EdgeInsets.fromLTRB(0 * fem,
                                                    0 * fem, 0 * fem, 8 * fem),
                                                child: TextButton(
                                                  onPressed: () {},
                                                  style: TextButton.styleFrom(
                                                    padding: EdgeInsets.zero,
                                                  ),
                                                  child: Container(
                                                    padding: EdgeInsets.fromLTRB(
                                                        16 * fem,
                                                        8 * fem,
                                                        16 * fem,
                                                        8 * fem),
                                                    width: double.infinity,
                                                    height: 36 * fem,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color(0xfff5f5f5)),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          8 * fem),
                                                    ),
                                                    child: Container(
                                                      // frame34912diA (28:72)
                                                      padding: EdgeInsets.fromLTRB(
                                                          0 * fem,
                                                          0 * fem,
                                                          1.25 * fem,
                                                          0 * fem),
                                                      width: double.infinity,
                                                      height: double.infinity,
                                                      child: Row(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Container(
                                                            // frame34911Mu4 (28:73)
                                                            margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                40.25 * fem,
                                                                0 * fem),
                                                            height: double.infinity,
                                                            child: Row(
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                              children: [
                                                                Container(
                                                                  // logosmastercardoFG (28:74)
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      8.03 *
                                                                          fem,
                                                                      0 * fem),
                                                                  width:
                                                                  31.97 * fem,
                                                                  height:
                                                                  20.01 * fem,
                                                                  child:
                                                                  Image.asset(
                                                                    'assets/page-1/images/logos-mastercard.png',
                                                                    width:
                                                                    31.97 * fem,
                                                                    height:
                                                                    20.01 * fem,
                                                                  ),
                                                                ),
                                                                Container(
                                                                  // frame34910Y6N (28:78)
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                      0 * fem,
                                                                      2 * fem,
                                                                      0 * fem,
                                                                      2 * fem),
                                                                  height: double
                                                                      .infinity,
                                                                  child: Row(
                                                                    crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Container(
                                                                        // axisbankfgn (28:79)
                                                                        margin: EdgeInsets.fromLTRB(
                                                                            0 * fem,
                                                                            0 * fem,
                                                                            8 * fem,
                                                                            0 * fem),
                                                                        child: Text(
                                                                          'Axis Bank',
                                                                          textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                          style:
                                                                          SafeGoogleFont(
                                                                            'IBM Plex Sans',
                                                                            fontSize:
                                                                            12 *
                                                                                ffem,
                                                                            fontWeight:
                                                                            FontWeight.w400,
                                                                            height: 1.3 *
                                                                                ffem /
                                                                                fem,
                                                                            color: Color(
                                                                                0xff606060),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        // aHx (28:80)
                                                                        '**** **** **** 8395',
                                                                        textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                        style:
                                                                        SafeGoogleFont(
                                                                          'IBM Plex Sans',
                                                                          fontSize:
                                                                          12 *
                                                                              ffem,
                                                                          fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                          height: 1.3 *
                                                                              ffem /
                                                                              fem,
                                                                          color: Color(
                                                                              0xff606060),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            // carbonradiobuttoncheckedJze (28:81)
                                                            width: 17.5 * fem,
                                                            height: 17.5 * fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/carbon-radio-button-checked.png',
                                                              width: 17.5 * fem,
                                                              height: 17.5 * fem,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                // frame34910cVY (28:82)
                                                onPressed: () {},
                                                style: TextButton.styleFrom(
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      16 * fem,
                                                      8 * fem,
                                                      16 * fem,
                                                      8 * fem),
                                                  width: double.infinity,
                                                  height: 36 * fem,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Color(0xfff5f5f5)),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        8 * fem),
                                                  ),
                                                  child: Container(
                                                    // frame34912Gpz (28:83)
                                                    padding: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        1.25 * fem,
                                                        1.25 * fem,
                                                        1.25 * fem),
                                                    width: double.infinity,
                                                    height: double.infinity,
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          // frame34911bcN (28:84)
                                                          margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0.75 * fem,
                                                              32.25 * fem,
                                                              0.75 * fem),
                                                          height: double.infinity,
                                                          child: Row(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                            children: [
                                                              Container(
                                                                // logosvisa8cJ (28:85)
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    8 * fem,
                                                                    0.04 * fem),
                                                                width: 32 * fem,
                                                                height: 10.33 * fem,
                                                                child: Image.asset(
                                                                  'assets/page-1/images/logos-visa.png',
                                                                  width: 32 * fem,
                                                                  height:
                                                                  10.33 * fem,
                                                                ),
                                                              ),
                                                              Container(
                                                                // frame34910qmc (28:87)
                                                                height:
                                                                double.infinity,
                                                                child: Row(
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                                  children: [
                                                                    Container(
                                                                      // hdfcbankycv (28:88)
                                                                      margin: EdgeInsets
                                                                          .fromLTRB(
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          8 * fem,
                                                                          0 * fem),
                                                                      child: Text(
                                                                        'HDFC Bank',
                                                                        textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                        style:
                                                                        SafeGoogleFont(
                                                                          'IBM Plex Sans',
                                                                          fontSize:
                                                                          12 *
                                                                              ffem,
                                                                          fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                          height: 1.3 *
                                                                              ffem /
                                                                              fem,
                                                                          color: Color(
                                                                              0xff606060),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      // 5R4 (28:89)
                                                                      '**** **** **** 6246',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                      style:
                                                                      SafeGoogleFont(
                                                                        'IBM Plex Sans',
                                                                        fontSize:
                                                                        12 *
                                                                            ffem,
                                                                        fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                        height: 1.3 *
                                                                            ffem /
                                                                            fem,
                                                                        color: Color(
                                                                            0xff606060),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          // carbonradiobuttoncheckedD1U (28:90)
                                                          width: 17.5 * fem,
                                                          height: 17.5 * fem,
                                                          child: Image.asset(
                                                            'assets/page-1/images/carbon-radio-button-checked-u4e.png',
                                                            width: 17.5 * fem,
                                                            height: 17.5 * fem,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // frame34914XXx (28:92)
                                          margin: EdgeInsets.fromLTRB(
                                              8 * fem, 0 * fem, 1 * fem, 0 * fem),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // vuesaxlinearaddExA (28:93)
                                                margin: EdgeInsets.fromLTRB(0 * fem,
                                                    0 * fem, 12 * fem, 0 * fem),
                                                width: 24 * fem,
                                                height: 24 * fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/vuesax-linear-add-FbQ.png',
                                                  width: 24 * fem,
                                                  height: 24 * fem,
                                                ),
                                              ),
                                              Container(
                                                // addnewcard9pE (28:99)
                                                margin: EdgeInsets.fromLTRB(0 * fem,
                                                    1 * fem, 0 * fem, 0 * fem),
                                                child: Text(
                                                  'Add New Card',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont(
                                                    'IBM Plex Sans',
                                                    fontSize: 14 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.3 * ffem / fem,
                                                    color: Color(0xff606060),
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
                            SizedBox(
                              height: 24 * fem,
                            ),
                            Container(
                              // frame34897chp (28:100)
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // upi9Sr (28:101)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 1 * fem),
                                    width: double.infinity,
                                    child: Text(
                                      'UPI',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Satoshi',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2575 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // frame34894Sgr (28:102)
                                    padding: EdgeInsets.fromLTRB(
                                        16 * fem, 16 * fem, 16 * fem, 16 * fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xfff5f5f5)),
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(16 * fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x14000000),
                                          offset: Offset(0 * fem, 8 * fem),
                                          blurRadius: 8 * fem,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // frame349168Jn (28:103)
                                          margin: EdgeInsets.fromLTRB(
                                              0 * fem, 0 * fem, 0 * fem, 12 * fem),
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // frame349094TL (28:104)
                                                margin: EdgeInsets.fromLTRB(0 * fem,
                                                    0 * fem, 0 * fem, 8 * fem),
                                                child: TextButton(
                                                  onPressed: () {},
                                                  style: TextButton.styleFrom(
                                                    padding: EdgeInsets.zero,
                                                  ),
                                                  child: Container(
                                                    padding: EdgeInsets.fromLTRB(
                                                        16 * fem,
                                                        8 * fem,
                                                        16 * fem,
                                                        8 * fem),
                                                    width: double.infinity,
                                                    height: 36 * fem,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color(0xfff5f5f5)),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          8 * fem),
                                                    ),
                                                    child: Container(
                                                      // frame34912j3g (28:105)
                                                      padding: EdgeInsets.fromLTRB(
                                                          0 * fem,
                                                          0 * fem,
                                                          1.25 * fem,
                                                          0 * fem),
                                                      width: double.infinity,
                                                      height: double.infinity,
                                                      child: Row(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Container(
                                                            // frame34911rPC (28:106)
                                                            margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                131.87 * fem,
                                                                0 * fem),
                                                            height: double.infinity,
                                                            child: Row(
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                              children: [
                                                                Container(
                                                                  // image3N6e (28:107)
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      8 * fem,
                                                                      0 * fem),
                                                                  width:
                                                                  23.38 * fem,
                                                                  height: 20 * fem,
                                                                  child:
                                                                  Image.asset(
                                                                    'assets/page-1/images/image-3.png',
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  // googlepaysp6 (28:109)
                                                                  'Google Pay',
                                                                  textAlign:
                                                                  TextAlign
                                                                      .center,
                                                                  style:
                                                                  SafeGoogleFont(
                                                                    'IBM Plex Sans',
                                                                    fontSize:
                                                                    12 * ffem,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                    height: 1.3 *
                                                                        ffem /
                                                                        fem,
                                                                    color: Color(
                                                                        0xff606060),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            // carbonradiobuttoncheckedDNA (28:110)
                                                            margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                0 * fem),
                                                            width: 17.5 * fem,
                                                            height: 17.5 * fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/carbon-radio-button-checked-dsp.png',
                                                              width: 17.5 * fem,
                                                              height: 17.5 * fem,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                // frame34910ipi (28:111)
                                                onPressed: () {},
                                                style: TextButton.styleFrom(
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      18 * fem,
                                                      8 * fem,
                                                      16 * fem,
                                                      8 * fem),
                                                  width: double.infinity,
                                                  height: 36 * fem,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Color(0xfff5f5f5)),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        8 * fem),
                                                  ),
                                                  child: Container(
                                                    // frame34912eCa (28:112)
                                                    padding: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        1.25 * fem,
                                                        0 * fem),
                                                    width: double.infinity,
                                                    height: double.infinity,
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          // frame34911PAA (28:113)
                                                          margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              145.25 * fem,
                                                              0 * fem),
                                                          height: double.infinity,
                                                          child: Row(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                            children: [
                                                              Container(
                                                                // image4X1U (28:115)
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    9 * fem,
                                                                    0 * fem),
                                                                width: 20 * fem,
                                                                height: 20 * fem,
                                                                child: Image.asset(
                                                                  'assets/page-1/images/image-4.png',
                                                                  fit: BoxFit.cover,
                                                                ),
                                                              ),
                                                              Text(
                                                                // phonepe2yp (28:117)
                                                                'PhonePe',
                                                                textAlign: TextAlign
                                                                    .center,
                                                                style:
                                                                SafeGoogleFont(
                                                                  'IBM Plex Sans',
                                                                  fontSize:
                                                                  12 * ffem,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                                  height: 1.3 *
                                                                      ffem /
                                                                      fem,
                                                                  color: Color(
                                                                      0xff606060),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          // carbonradiobuttoncheckedmRc (28:118)
                                                          margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem),
                                                          width: 17.5 * fem,
                                                          height: 17.5 * fem,
                                                          child: Image.asset(
                                                            'assets/page-1/images/carbon-radio-button-checked-GSn.png',
                                                            width: 17.5 * fem,
                                                            height: 17.5 * fem,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // frame34914sjY (28:120)
                                          margin: EdgeInsets.fromLTRB(
                                              8 * fem, 0 * fem, 109 * fem, 0 * fem),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // vuesaxlinearaddC18 (28:121)
                                                margin: EdgeInsets.fromLTRB(0 * fem,
                                                    0 * fem, 12 * fem, 0 * fem),
                                                width: 24 * fem,
                                                height: 24 * fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/vuesax-linear-add.png',
                                                  width: 24 * fem,
                                                  height: 24 * fem,
                                                ),
                                              ),
                                              Container(
                                                // addnewupiidW1p (28:127)
                                                margin: EdgeInsets.fromLTRB(0 * fem,
                                                    1 * fem, 0 * fem, 0 * fem),
                                                child: Text(
                                                  'Add New UPI ID',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont(
                                                    'IBM Plex Sans',
                                                    fontSize: 14 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.3 * ffem / fem,
                                                    color: Color(0xff606060),
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
                            SizedBox(
                              height: 24 * fem,
                            ),
                            Container(
                              // frame34898anN (28:128)
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // morepaymentoptionsKzr (28:129)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 17 * fem),
                                    child: Text(
                                      'More Payment Options',
                                      style: SafeGoogleFont(
                                        'Satoshi',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2575 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // frame34895cj4 (28:130)
                                    padding: EdgeInsets.fromLTRB(
                                        16 * fem, 16 * fem, 16 * fem, 16 * fem),
                                    width: double.infinity,
                                    height: 114 * fem,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xfff5f5f5)),
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(16 * fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x14000000),
                                          offset: Offset(0 * fem, 8 * fem),
                                          blurRadius: 8 * fem,
                                        ),
                                      ],
                                    ),
                                    child: Container(
                                      // frame34919hkW (28:131)
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // frame34909rNW (28:132)
                                            margin: EdgeInsets.fromLTRB(
                                                0 * fem, 0 * fem, 0 * fem, 8 * fem),
                                            padding: EdgeInsets.fromLTRB(16 * fem,
                                                8 * fem, 16 * fem, 8 * fem),
                                            width: double.infinity,
                                            height: 36 * fem,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xfff5f5f5)),
                                              borderRadius:
                                              BorderRadius.circular(8 * fem),
                                            ),
                                            child: TextButton(
                                              // frame34912LHg (28:133)
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // frame34911F9k (28:134)
                                                      margin: EdgeInsets.fromLTRB(
                                                          0 * fem,
                                                          0 * fem,
                                                          160 * fem,
                                                          0 * fem),
                                                      height: double.infinity,
                                                      child: Row(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Container(
                                                            // vuesaxlinearwallet3NVG (28:135)
                                                            margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                8 * fem,
                                                                0 * fem),
                                                            width: 20 * fem,
                                                            height: 20 * fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/vuesax-linear-wallet-3.png',
                                                              width: 20 * fem,
                                                              height: 20 * fem,
                                                            ),
                                                          ),
                                                          Text(
                                                            // walletVZt (28:137)
                                                            'Wallet',
                                                            textAlign:
                                                            TextAlign.center,
                                                            style: SafeGoogleFont(
                                                              'IBM Plex Sans',
                                                              fontSize: 12 * ffem,
                                                              fontWeight:
                                                              FontWeight.w400,
                                                              height:
                                                              1.3 * ffem / fem,
                                                              color:
                                                              Color(0xff606060),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // vuesaxlineararrowrightqdk (28:138)
                                                      width: 20 * fem,
                                                      height: 20 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/vulkan-linear-arrow-right.png',
                                                        width: 20 * fem,
                                                        height: 20 * fem,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // frame34910mnJ (28:139)
                                            padding: EdgeInsets.fromLTRB(16 * fem,
                                                8 * fem, 16 * fem, 8 * fem),
                                            width: double.infinity,
                                            height: 36 * fem,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xfff5f5f5)),
                                              borderRadius:
                                              BorderRadius.circular(8 * fem),
                                            ),
                                            child: TextButton(
                                              // frame34912ViJ (28:140)
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // frame34911S7k (28:141)
                                                      margin: EdgeInsets.fromLTRB(
                                                          0 * fem,
                                                          0 * fem,
                                                          129 * fem,
                                                          0 * fem),
                                                      height: double.infinity,
                                                      child: Row(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Container(
                                                            // vuesaxlinearbankxrn (28:142)
                                                            margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                8 * fem,
                                                                0 * fem),
                                                            width: 20 * fem,
                                                            height: 20 * fem,
                                                            child: Image.asset(
                                                              'assets/page-1/images/vuesax-linear-bank.png',
                                                              width: 20 * fem,
                                                              height: 20 * fem,
                                                            ),
                                                          ),
                                                          Text(
                                                            // netbankingsyk (28:144)
                                                            'Net Banking',
                                                            textAlign:
                                                            TextAlign.center,
                                                            style: SafeGoogleFont(
                                                              'IBM Plex Sans',
                                                              fontSize: 12 * ffem,
                                                              fontWeight:
                                                              FontWeight.w400,
                                                              height:
                                                              1.3 * ffem / fem,
                                                              color:
                                                              Color(0xff606060),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // vuesaxlineararrowrightEJW (28:145)
                                                      width: 20 * fem,
                                                      height: 20 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/vuesax-linear-arrow-right-GKt.png',
                                                        width: 20 * fem,
                                                        height: 20 * fem,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame125Z5t (28:146)
                        padding: EdgeInsets.fromLTRB(
                            24 * fem, 15 * fem, 24 * fem, 27 * fem),
                        width: double.infinity,
                        height: 95 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // frame34920GW6 (28:148)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 57 * fem, 0 * fem),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // C8r (28:149)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 8 * fem),
                                    child: Text(
                                      '₹6,699',
                                      style: SafeGoogleFont(
                                        'IBM Plex Sans',
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.3 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // viewdetailedbillVdk (28:150)
                                    'View detailed bill',
                                    style: SafeGoogleFont(
                                      'IBM Plex Sans',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.3 * ffem / fem,
                                      color: Color(0xff2095fd),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame1939U (28:147)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 1 * fem, 0 * fem, 2 * fem),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: 159 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xff027fee),
                                    borderRadius: BorderRadius.circular(16 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Proceed to Pay',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Satoshi',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2575 * ffem / fem,
                                        color: Color(0xffffffff),
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

              ],
            ),
          ),
        ),
    ),);
  }
}
