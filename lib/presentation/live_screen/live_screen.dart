import 'controller/live_controller.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/app_bar/appbar_circleimage_1.dart';
import 'package:social_template/widgets/app_bar/appbar_image.dart';
import 'package:social_template/widgets/app_bar/appbar_subtitle.dart';
import 'package:social_template/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:social_template/widgets/app_bar/custom_app_bar.dart';
import 'package:social_template/widgets/custom_floating_button.dart';
import 'package:social_template/widgets/custom_text_form_field.dart';

class LiveScreen extends GetWidget<LiveController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    decoration: AppDecoration.gradientBlack9007fGray40000,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomAppBar(
                          height: getVerticalSize(
                            50.00,
                          ),
                          leadingWidth: 66,
                          leading: AppbarCircleimage1(
                            imagePath: ImageConstant.imgEllipse9,
                            margin: getMargin(
                              left: 16,
                            ),
                          ),
                          title: Padding(
                            padding: getPadding(
                              left: 24,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AppbarSubtitle(
                                  text: "lbl_lucas_anna".tr,
                                ),
                                AppbarSubtitle3(
                                  text: "lbl_35_16".tr,
                                  margin: getMargin(
                                    top: 4,
                                    right: 76,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            AppbarImage(
                              height: getSize(
                                24.00,
                              ),
                              width: getSize(
                                24.00,
                              ),
                              svgPath: ImageConstant.imgClose24x24,
                              margin: getMargin(
                                left: 16,
                                top: 13,
                                right: 16,
                                bottom: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width,
                    margin: getMargin(
                      top: 324,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgGroup1788,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: size.width,
                                padding: getPadding(
                                  left: 16,
                                  top: 29,
                                  right: 16,
                                  bottom: 29,
                                ),
                                decoration:
                                    AppDecoration.gradientGray40000Black900ad,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 8,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 39,
                                              bottom: 9,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding: getPadding(
                                                    left: 8,
                                                    top: 7,
                                                    right: 8,
                                                    bottom: 7,
                                                  ),
                                                  decoration: AppDecoration
                                                      .fillBlack90087
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder32,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse945x45,
                                                        height: getSize(
                                                          45.00,
                                                        ),
                                                        width: getSize(
                                                          45.00,
                                                        ),
                                                        radius: BorderRadius
                                                            .circular(
                                                          getHorizontalSize(
                                                            22.00,
                                                          ),
                                                        ),
                                                        margin: getMargin(
                                                          bottom: 1,
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            getHorizontalSize(
                                                          164.00,
                                                        ),
                                                        margin: getMargin(
                                                          left: 15,
                                                          top: 6,
                                                          right: 21,
                                                          bottom: 3,
                                                        ),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    "lbl_erlikhe_sweet"
                                                                        .tr,
                                                                style:
                                                                    TextStyle(
                                                                  color: ColorConstant
                                                                      .whiteA7007f,
                                                                  fontSize:
                                                                      getFontSize(
                                                                    14,
                                                                  ),
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    "msg_can_i_join_with"
                                                                        .tr,
                                                                style:
                                                                    TextStyle(
                                                                  color: ColorConstant
                                                                      .whiteA70001,
                                                                  fontSize:
                                                                      getFontSize(
                                                                    18,
                                                                  ),
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: getMargin(
                                                    top: 12,
                                                    right: 40,
                                                  ),
                                                  padding: getPadding(
                                                    left: 8,
                                                    top: 7,
                                                    right: 8,
                                                    bottom: 7,
                                                  ),
                                                  decoration: AppDecoration
                                                      .fillBlack90087
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder32,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse845x45,
                                                        height: getSize(
                                                          45.00,
                                                        ),
                                                        width: getSize(
                                                          45.00,
                                                        ),
                                                        radius: BorderRadius
                                                            .circular(
                                                          getHorizontalSize(
                                                            22.00,
                                                          ),
                                                        ),
                                                        margin: getMargin(
                                                          bottom: 1,
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            getHorizontalSize(
                                                          103.00,
                                                        ),
                                                        margin: getMargin(
                                                          left: 18,
                                                          top: 6,
                                                          right: 40,
                                                          bottom: 7,
                                                        ),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    "lbl_dong_khuwan"
                                                                        .tr,
                                                                style:
                                                                    TextStyle(
                                                                  color: ColorConstant
                                                                      .whiteA7007f,
                                                                  fontSize:
                                                                      getFontSize(
                                                                    14,
                                                                  ),
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    "lbl_so_beautiful"
                                                                        .tr,
                                                                style:
                                                                    TextStyle(
                                                                  color: ColorConstant
                                                                      .whiteA70001,
                                                                  fontSize:
                                                                      getFontSize(
                                                                    18,
                                                                  ),
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant.imgGroup9142,
                                            height: getVerticalSize(
                                              180.00,
                                            ),
                                            width: getHorizontalSize(
                                              98.00,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        top: 15,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder25,
                                      ),
                                      child: Row(
                                        children: [
                                          CustomTextFormField(
                                            width: 316,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .frameThirtySixController,
                                            hintText: "lbl_write_a_comment".tr,
                                            margin: getMargin(
                                              right: 66,
                                            ),
                                            variant: TextFormFieldVariant
                                                .FillWhiteA70070,
                                            padding: TextFormFieldPadding
                                                .PaddingT16_2,
                                            textInputAction:
                                                TextInputAction.done,
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
                        Container(
                          height: getVerticalSize(
                            2.00,
                          ),
                          width: getHorizontalSize(
                            344.00,
                          ),
                          margin: getMargin(
                            top: 8,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.whiteA7003f,
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
        floatingActionButton: CustomFloatingButton(
          height: 50,
          width: 50,
          child: CustomImageView(
            svgPath: ImageConstant.imgSend50x50,
            height: getVerticalSize(
              25.00,
            ),
            width: getHorizontalSize(
              25.00,
            ),
          ),
        ),
      ),
    );
  }
}
