import 'controller/detailed_profile_controller.dart';
import 'models/detailed_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/app_bar/appbar_image.dart';
import 'package:social_template/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class DetailedProfilePage extends StatelessWidget {
  DetailedProfileController controller =
      Get.put(DetailedProfileController(DetailedProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(53.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleftDeepPurpleA200,
                    margin: getMargin(left: 16, top: 13, bottom: 16),
                    onTap: onTapArrowleft6),
                actions: [
                  Padding(
                      padding: getPadding(all: 16),
                      child: Text("lbl_done".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold16))
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(top: 18, bottom: 18),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16),
                              child: Text("lbl_profile".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtInterBold32DeeppurpleA200))),
                      Container(
                          height: getVerticalSize(2.00),
                          width: size.width,
                          margin: getMargin(top: 21),
                          decoration:
                              BoxDecoration(color: ColorConstant.deepPurple50)),
                      Container(
                          height: getVerticalSize(126.00),
                          width: getHorizontalSize(124.00),
                          margin: getMargin(top: 30),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse14,
                                    height: getSize(120.00),
                                    width: getSize(120.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(60.00)),
                                    alignment: Alignment.topCenter),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        height: getSize(40.00),
                                        width: getSize(40.00),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgClose40x40,
                                                  height: getSize(40.00),
                                                  width: getSize(40.00),
                                                  alignment: Alignment.center),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgEdit,
                                                  height: getSize(24.00),
                                                  width: getSize(24.00),
                                                  alignment: Alignment.center)
                                            ])))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 44, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_username".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18Gray600),
                                Text("lbl_rosalia".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18Black900)
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 29, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("lbl_email".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterRegular18Gray600)),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("msg_rosaliah_gmail".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterRegular18Black900))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 28, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_phone".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18Gray600),
                                Text("msg_61_9999_999_99".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18Black900)
                              ])),
                      Container(
                          height: getVerticalSize(2.00),
                          width: size.width,
                          margin: getMargin(top: 39),
                          decoration:
                              BoxDecoration(color: ColorConstant.deepPurple50)),
                      Padding(
                          padding: getPadding(left: 16, top: 30, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_gender".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18Gray600),
                                Text("lbl_male".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18Black900)
                              ])),
                      Padding(
                          padding: getPadding(
                              left: 16, top: 29, right: 16, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_date_of_birth2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18Gray600),
                                Text("lbl_21_08_1992".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18Black900)
                              ]))
                    ]))));
  }

  onTapArrowleft6() {
    Get.back();
  }
}
