import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/custom_button.dart';
import 'package:social_template/widgets/custom_icon_button.dart';
import 'package:social_template/widgets/custom_text_form_field.dart';

class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.deepPurpleA200,
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 3, right: 16, bottom: 3),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 44,
                          width: 44,
                          shape: IconButtonShape.RoundedBorder15,
                          onTap: () {
                            onTapBtnArrowleft();
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      Padding(
                          padding: getPadding(top: 78),
                          child: Text("lbl_forgot_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32)),
                      Container(
                          width: getHorizontalSize(352.00),
                          margin: getMargin(top: 11),
                          child: Text("msg_please_enter_yo".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16)),
                      CustomTextFormField(
                          width: 382,
                          focusNode: FocusNode(),
                          controller: controller.frameThirtyController,
                          hintText: "lbl_email_id".tr,
                          margin: getMargin(top: 59),
                          fontStyle: TextFormFieldFontStyle.InterMedium16,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress),
                      CustomButton(
                          height: 50,
                          width: 382,
                          text: "lbl_log_in".tr,
                          margin: getMargin(top: 40, bottom: 5),
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.CircleBorder25,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.InterMedium18,
                          onTap: onTapLogin)
                    ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.notificationScreen);
  }
}
