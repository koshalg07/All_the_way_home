import '../../screens/profile_page.dart';
import '../../screens/sign_in.dart';
import '../../screens/sign_up.dart';
import 'controller/landing_page_with_logo_controller.dart';
import 'package:all_the_way_home/core/app_export.dart';
import 'package:all_the_way_home/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandingPageWithLogoScreen
    extends GetWidget<LandingPageWithLogoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: getVerticalSize(
                    295.00,
                  ),
                  width: getHorizontalSize(
                    296.00,
                  ),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse1,
                        height: getVerticalSize(
                          185.00,
                        ),
                        width: getHorizontalSize(
                          88.00,
                        ),
                        alignment: Alignment.topLeft,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3,
                        height: getVerticalSize(
                          85.00,
                        ),
                        width: getHorizontalSize(
                          171.00,
                        ),
                        alignment: Alignment.topLeft,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img16704277709021,
                        height: getVerticalSize(
                          202.00,
                        ),
                        width: getHorizontalSize(
                          196.00,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            30.00,
                          ),
                        ),
                        alignment: Alignment.bottomRight,
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgUndrawunderco,
                height: getVerticalSize(
                  180.00,
                ),
                width: getHorizontalSize(
                  293.00,
                ),
                margin: getMargin(
                  top: 23,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 26,
                ),
                child: Text(
                  "msg_get_things_started".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSaralaBold18,
                ),
              ),
              Container(
                height: getVerticalSize(
                  12.00,
                ),
                margin: getMargin(
                  top: 56,
                ),
                child: SmoothIndicator(
                  offset: 0,
                  count: 4,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 17,
                    activeDotColor: ColorConstant.deepOrangeA700Ea,
                    dotColor: ColorConstant.blueGray100,
                    dotHeight: getVerticalSize(
                      12.00,
                    ),
                    dotWidth: getHorizontalSize(
                      12.00,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 38,
                  top: 73,
                  right: 36,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      height: 60,
                      width: 133,
                      text: "lbl_sign_up".tr,
                      onTap: (){Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const SignUpScreen()));},

                    ),
                    CustomButton(
                      height: 60,
                      width: 133,
                      text: "lbl_login".tr,
                      onTap: (){Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const SignInScreen()));},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
