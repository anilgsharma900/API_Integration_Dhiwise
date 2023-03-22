import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/custom_button.dart';
import 'package:social_template/domain/facebookauth/facebook_auth_helper.dart';
import 'package:social_template/domain/googleauth/google_auth_helper.dart';

class LoginScreen extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.deepPurpleA200,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(243.00),
                          width: size.width,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle3799,
                                    height: getVerticalSize(158.00),
                                    width: getHorizontalSize(122.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(12.00)),
                                    alignment: Alignment.topLeft,
                                    margin: getMargin(left: 16, top: 13)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle3800,
                                    height: getVerticalSize(158.00),
                                    width: getHorizontalSize(122.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(12.00)),
                                    alignment: Alignment.bottomCenter,
                                    margin: getMargin(bottom: 10)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle3803,
                                    height: getVerticalSize(67.00),
                                    width: getHorizontalSize(122.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(12.00)),
                                    alignment: Alignment.topCenter),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle3802,
                                    height: getVerticalSize(158.00),
                                    width: getHorizontalSize(122.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(12.00)),
                                    alignment: Alignment.topRight,
                                    margin: getMargin(top: 38, right: 16)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle3801,
                                    height: getVerticalSize(158.00),
                                    width: getHorizontalSize(8.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(4.00)),
                                    alignment: Alignment.bottomRight),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle3799158x8,
                                    height: getVerticalSize(158.00),
                                    width: getHorizontalSize(8.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(4.00)),
                                    alignment: Alignment.topLeft,
                                    margin: getMargin(top: 32)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getVerticalSize(243.00),
                                        width: size.width,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment(0.5, 0),
                                                end: Alignment(0.5, 0.81),
                                                colors: [
                                              ColorConstant.deepPurpleA200F2,
                                              ColorConstant.deepPurpleA200F201
                                            ]))))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(343.00),
                              margin: getMargin(left: 16, top: 83),
                              child: Text("msg_find_new_friend".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold32))),
                      Container(
                          width: getHorizontalSize(370.00),
                          margin: getMargin(top: 21),
                          child: Text("msg_with_billions_o".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16)),
                      Padding(
                          padding: getPadding(top: 56),
                          child: Text("lbl_or_login_with".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16)),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgFacebook,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    onTap: () {
                                      onTapImgFacebook();
                                    }),
                                CustomImageView(
                                    svgPath: ImageConstant.imgTwitter,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    margin: getMargin(left: 30)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgGoogle,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    margin: getMargin(left: 30),
                                    onTap: () {
                                      onTapImgGoogle();
                                    })
                              ])),
                      CustomButton(
                          height: 50,
                          width: 382,
                          text: "lbl_log_in".tr,
                          margin: getMargin(top: 50),
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.CircleBorder25,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.InterMedium18,
                          onTap: onTapLogin),
                      CustomButton(
                          height: 50,
                          width: 382,
                          text: "lbl_sign_up".tr,
                          margin: getMargin(top: 28, bottom: 5),
                          variant: ButtonVariant.OutlineWhiteA700,
                          shape: ButtonShape.CircleBorder25,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.InterMedium18WhiteA700,
                          onTap: onTapSignup)
                    ]))));
  }

  onTapImgFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.logInScreen);
  }

  onTapSignup() {
    Get.toNamed(AppRoutes.signUpScreen);
  }
}
