import 'dart:developer';
import 'dart:ui';

import 'package:all_the_way_home/presentation/Queries/page-1/landing-page-with-logo.dart';
import 'package:all_the_way_home/presentation/cost_calculator_screen/cost_calculator_screen.dart';

import 'package:all_the_way_home/screens/sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../screens/profile_page.dart';
import '../../screens/quotations.dart';
import '../../screens/sign_up.dart';

import '../Residential package/page-1/landing-page-with-logo.dart';
import '../Timeline/page-1/landing-page-with-logo.dart';

import '../payment/page-1/landing-page-with-logo.dart';
import 'controller/page_one_controller.dart';
import 'package:all_the_way_home/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class PageOneScreen extends GetWidget<PageOneController> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: size.width,
                    margin: getMargin(
                      bottom: 5,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 13,
                            right: 12,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  Padding(
                                    padding: getPadding(
                                      left: 5,
                                      top: 14,
                                    ),
                                    child: Text(
                                      'Hello, ' + user.email!,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtSaralaBold22,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                  bottom: 34,
                                ),

                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 0,
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            600.00,
                          ),
                          width: size.width,
                          margin: getMargin(
                            top: 0,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: size.width,
                                  padding: getPadding(
                                    left: 2,
                                    top: 10,
                                    right: 2,
                                    bottom: 48,
                                  ),
                                  decoration:
                                      AppDecoration.outlineWhiteA700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder45,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 4,
                                          right: 4,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding: getPadding(
                                                left: 30,
                                                top: 7,
                                                right: 30,
                                                bottom: 7,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineWhiteA7001
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgDownload1,
                                                    height: getVerticalSize(
                                                      41.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      34.00,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      bottom: 3,
                                                    ),
                                                    child: Text(
                                                      'Details',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSaralaBold15,
                                                    ),
                                                  ),
                                                ],
                                              ),

                                            ),
                                            Container(
                                              padding: getPadding(
                                                left: 16,
                                                top: 3,
                                                right: 16,
                                                bottom: 3,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineWhiteA7001
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgIstockphoto102,
                                                    height: getVerticalSize(
                                                      48.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      59.00,
                                                    ),
                                                    alignment:
                                                        Alignment.centerRight,
                                                    margin: getMargin(
                                                      right: 7,
                                                    ),
                                                    onTap: () {Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> Quotation()));},

                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      bottom: 5,
                                                    ),
                                                    child: Text(
                                                      'Quotation',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSaralaBold15,
                                                    ),
                                                  ),


                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: getPadding(
                                                left: 23,
                                                top: 3,
                                                right: 23,
                                                bottom: 3,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineWhiteA7001
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgDownload2,
                                                    height: getVerticalSize(
                                                      42.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      41.00,

                                                    ),
                                                    onTap: () {Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> TimelineScreen()));},
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 1,
                                                      bottom: 7,
                                                    ),
                                                    child: Text(
                                                      "Timeline",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSaralaBold15,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 13,
                                          top: 27,
                                        ),
                                        child: Text(
                                          'Calculator',
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: AppStyle.txtSaralaBold22,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 9,
                                          top: 5,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: getMargin(
                                                top: 2,
                                              ),
                                              padding: getPadding(
                                                left: 20,
                                                right: 20,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineWhiteA7001
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgImages11,
                                                    height: getVerticalSize(
                                                      42.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      41.00,
                                                    ),
                                                    margin: getMargin(
                                                      left: 12,
                                                    ),
                                                    onTap: () {Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> CostCalculatorScreen()));},
                                                  ),
                                                  Container(
                                                    width: getHorizontalSize(
                                                      71.00,
                                                    ),
                                                    margin: getMargin(
                                                      bottom: 7,
                                                    ),
                                                    child: Text(
                                                      'Cost Estimator',
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtSaralaBold15
                                                          .copyWith(
                                                        height: 1.00,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),


                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 10,
                                          top: 20,
                                        ),
                                        child: Text(
                                          'Our Packages',
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: AppStyle.txtSaralaBold22,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 9,
                                          top: 9,
                                          right: 4,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: ColorConstant.whiteA700,
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  width: getHorizontalSize(
                                                    1.00,
                                                  ),
                                                ),
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20,
                                              ),
                                              child: Container(
                                                height: getVerticalSize(
                                                  82.00,
                                                ),
                                                width: getHorizontalSize(
                                                  111.00,
                                                ),
                                                padding: getPadding(
                                                  left: 14,
                                                  top: 6,
                                                  right: 14,
                                                  bottom: 6,
                                                ),
                                                decoration: AppDecoration
                                                    .outlineWhiteA7001
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder20,
                                                ),
                                                child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: [
                                                    Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Padding(
                                                        padding: getPadding(
                                                          bottom: 4,
                                                        ),
                                                        child: Text(
                                                          'Residential',
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSaralaBold15,
                                                        ),
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgDownload11,
                                                      height: getVerticalSize(
                                                        46.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        65.00,
                                                      ),
                                                      alignment:
                                                          Alignment.topCenter,
                                                      onTap: () {Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> ResidentialScreen()));},
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding: getPadding(
                                                left: 10,
                                                top: 5,
                                                right: 10,
                                                bottom: 5,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineWhiteA7001
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgIstockphoto116,
                                                    height: getVerticalSize(
                                                      38.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      53.00,
                                                    ),
                                                    margin: getMargin(
                                                      right: 15,
                                                    ),
                                                    onTap: () {Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> ResidentialScreen()));},
                                                  ),
                                                  Container(
                                                    width: getHorizontalSize(
                                                      81.00,
                                                    ),
                                                    margin: getMargin(
                                                      bottom: 1,
                                                    ),
                                                    child: Text(
                                                      'Luxury Residential',
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtSaralaBold15
                                                          .copyWith(
                                                        height: 1.00,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: getPadding(
                                                left: 11,
                                                top: 9,
                                                right: 11,
                                                bottom: 9,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineWhiteA7001
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgImages21,
                                                    height: getVerticalSize(
                                                      38.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      39.00,
                                                    ),
                                                    onTap: () {Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> ResidentialScreen()));},
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      bottom: 2,
                                                    ),
                                                    child: Text(
                                                      'Commercial',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSaralaBold15,
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
                            ],
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
        bottomNavigationBar:  GNav(
            tabs: [
              GButton(icon: Icons.home,
                text:'Home',onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>  PageOneScreen()));
                },),
              GButton(icon: Icons.question_mark_outlined,
                  text:'Queries',onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>  QueriesScreen()));
                },),
              GButton(icon: Icons.payment_outlined,
                  text:'Payments',onPressed: () {
      Navigator.push(context,MaterialPageRoute(builder:(context)=>  PageOneScreen()));
      },),
            ]
        ),
      ),
    );
  }
}
