import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.deepPurpleA200,
            body: GestureDetector(
                onTap: () {
                  onTapSplash();
                },
                child: Container(
                    width: size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgGroup9259,
                              height: getVerticalSize(180.00),
                              width: getHorizontalSize(120.00),
                              margin: getMargin(bottom: 5))
                        ])))));
  }

  onTapSplash() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
