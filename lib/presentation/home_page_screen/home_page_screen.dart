import 'package:all_the_way_home/presentation/page_one_screen/page_one_screen.dart';
import 'package:all_the_way_home/screens/profile_page.dart';

import 'controller/home_page_controller.dart';
import 'package:all_the_way_home/core/app_export.dart';
import 'package:all_the_way_home/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class HomePageScreen extends GetWidget<HomePageController> {
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
            onPressed: () {Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const ProfileScreen()));},
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
                      bottom: 2,
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
                                      "msg_hello_ishita_ray".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtSaralaBold22,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            375.00,
                          ),
                          margin: getMargin(
                            left: 7,
                            top: 14,
                            right: 8,
                          ),
                          padding: getPadding(
                            left: 26,
                            top: 15,
                            right: 26,
                            bottom: 15,
                          ),
                          decoration: AppDecoration.outlineWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder20,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  319.00,
                                ),
                                child: Text(
                                  "msg_building_your_dream".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtSoraRegular22.copyWith(
                                    height: 1.36,
                                  ),
                                ),
                              ),
                              CustomButton(
                                height: 60,
                                width: 271,
                                text: "lbl_raise_a_request".tr,
                                margin: getMargin(
                                  top: 10,
                                  bottom: 4,
                                ),
                                variant: ButtonVariant.OutlineBlack9003f,
                                padding: ButtonPadding.PaddingAll9,
                                fontStyle: ButtonFontStyle.SaralaBold22,
                                onTap: (){Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> PageOneScreen()));},
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 14,
                              top: 31,
                            ),

                          ),
                        ),

                        Padding(
                          padding: getPadding(
                            top: 320,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: getMargin(
                                  bottom: 18,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    62.00,
                                  ),
                                  width: getHorizontalSize(
                                    60.00,
                                  ),
                                  padding: getPadding(
                                    left: 9,
                                    top: 12,
                                    right: 9,
                                    bottom: 12,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder10,
                                    image: DecorationImage(
                                      image: fs.Svg(
                                        ImageConstant.imgGroup85,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImages1,
                                        height: getVerticalSize(
                                          38.00,
                                        ),
                                        width: getHorizontalSize(
                                          36.00,
                                        ),
                                        alignment: Alignment.centerRight,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 6,
                                ),
                                padding: getPadding(
                                  left: 15,
                                  right: 15,
                                ),
                                decoration:
                                AppDecoration.outlineBlack9003f.copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder20,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgHomeicontrend,
                                      height: getVerticalSize(
                                        59.00,
                                      ),
                                      width: getHorizontalSize(
                                        55.00,
                                      ),
                                      margin: getMargin(
                                        bottom: 21,
                                      ),
                                      onTap: (){Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> HomePageScreen()));},
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgQuestionmarki,
                                      height: getVerticalSize(
                                        41.00,
                                      ),
                                      width: getHorizontalSize(
                                        57.00,
                                      ),
                                      margin: getMargin(
                                        left: 21,
                                        top: 10,
                                        bottom: 29,
                                      ),
                                      onTap: (){Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> HomePageScreen()));},
                                    ),
                                    CustomImageView(
                                      imagePath:
                                      ImageConstant.imgIstockphoto139,
                                      height: getVerticalSize(
                                        59.00,
                                      ),
                                      width: getHorizontalSize(
                                        77.00,
                                      ),
                                      margin: getMargin(
                                        left: 14,
                                        bottom: 21,
                                      ),
                                      onTap: (){Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> PageOneScreen()));},
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
            ],
          ),
        ),
      ),
    );
  }
}
