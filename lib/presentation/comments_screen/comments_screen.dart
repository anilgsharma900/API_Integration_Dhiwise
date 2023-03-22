import '../comments_screen/widgets/comments_item_widget.dart';
import 'controller/comments_controller.dart';
import 'models/comments_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/custom_floating_button.dart';
import 'package:social_template/widgets/custom_text_form_field.dart';

class CommentsScreen extends GetWidget<CommentsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgClose,
                          height: getSize(24.00),
                          width: getSize(24.00),
                          margin: getMargin(left: 16),
                          onTap: () {
                            onTapImgClose();
                          }),
                      Padding(
                          padding: getPadding(left: 16, top: 34),
                          child: Text("lbl_comments".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32DeeppurpleA200)),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Container(
                                    height: getVerticalSize(2.00),
                                    width: size.width,
                                    decoration: BoxDecoration(
                                        color: ColorConstant.deepPurple50));
                              },
                              itemCount: controller.commentsModelObj.value
                                  .commentsItemList.length,
                              itemBuilder: (context, index) {
                                CommentsItemModel model = controller
                                    .commentsModelObj
                                    .value
                                    .commentsItemList[index];
                                return CommentsItemWidget(model);
                              })))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 16, right: 16, bottom: 39),
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.circleBorder25),
                child: Row(children: [
                  CustomTextFormField(
                      width: 316,
                      focusNode: FocusNode(),
                      controller: controller.frameThirtySixController,
                      hintText: "lbl_write_a_comment".tr,
                      margin: getMargin(right: 66),
                      variant: TextFormFieldVariant.FillGray10001,
                      padding: TextFormFieldPadding.PaddingT16_2,
                      fontStyle: TextFormFieldFontStyle.InterMedium14Gray50002,
                      textInputAction: TextInputAction.done)
                ])),
            floatingActionButton: CustomFloatingButton(
                height: 50,
                width: 50,
                child: CustomImageView(
                    svgPath: ImageConstant.imgSend50x50,
                    height: getVerticalSize(25.00),
                    width: getHorizontalSize(25.00)))));
  }

  onTapImgClose() {
    Get.toNamed(AppRoutes.pageViewScreen);
  }
}
