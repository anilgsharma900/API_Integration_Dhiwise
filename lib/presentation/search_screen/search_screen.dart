import '../search_screen/widgets/search_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/search_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/custom_search_view.dart';

class SearchScreen extends GetWidget<SearchController> {
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
                padding: getPadding(left: 16, top: 13, right: 16, bottom: 13),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgClose,
                          height: getSize(24.00),
                          width: getSize(24.00),
                          onTap: () {
                            onTapImgClose();
                          }),
                      Padding(
                          padding: getPadding(top: 34),
                          child: Text("lbl_search".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32DeeppurpleA200)),
                      CustomSearchView(
                          width: 382,
                          focusNode: FocusNode(),
                          controller: controller.group9116Controller,
                          hintText: "lbl_search".tr,
                          margin: getMargin(top: 13),
                          suffix: Padding(
                              padding: EdgeInsets.only(
                                  right: getHorizontalSize(15.00)),
                              child: IconButton(
                                  onPressed: () {
                                    controller.group9116Controller.clear;
                                  },
                                  icon: Icon(Icons.clear,
                                      color: Colors.grey.shade600))),
                          suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(40.00))),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_recently".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold20),
                                Padding(
                                    padding: getPadding(bottom: 5),
                                    child: Text("lbl_clear_all".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterMedium16DeeppurpleA200))
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
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
                              itemCount: controller
                                  .searchModelObj.value.searchItemList.length,
                              itemBuilder: (context, index) {
                                SearchItemModel model = controller
                                    .searchModelObj.value.searchItemList[index];
                                return SearchItemWidget(model);
                              })))
                    ]))));
  }

  onTapImgClose() {
    Get.back();
  }
}
