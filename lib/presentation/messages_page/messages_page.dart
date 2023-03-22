import '../messages_page/widgets/listellipsefifteen3_item_widget.dart';
import '../messages_page/widgets/listellipsetwentytwo_one_item_widget.dart';
import 'controller/messages_controller.dart';
import 'models/listellipsefifteen3_item_model.dart';
import 'models/listellipsetwentytwo_one_item_model.dart';
import 'models/messages_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/app_bar/appbar_image.dart';
import 'package:social_template/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MessagesPage extends StatelessWidget {
  MessagesController controller =
      Get.put(MessagesController(MessagesModel().obs));

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
                    onTap: onTapArrowleft3),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgPlus24x24,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 16))
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(top: 22, bottom: 22),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 16),
                          child: Text("lbl_messages".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32DeeppurpleA200)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(99.00),
                              child: Obx(() => ListView.builder(
                                  padding: getPadding(left: 16, top: 17),
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: controller.messagesModelObj.value
                                      .listellipsefifteen3ItemList.length,
                                  itemBuilder: (context, index) {
                                    Listellipsefifteen3ItemModel model =
                                        controller.messagesModelObj.value
                                            .listellipsefifteen3ItemList[index];
                                    return Listellipsefifteen3ItemWidget(model);
                                  })))),
                      Container(
                          height: getVerticalSize(2.00),
                          width: size.width,
                          margin: getMargin(top: 22),
                          decoration:
                              BoxDecoration(color: ColorConstant.deepPurple50)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 24, right: 16),
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
                                  itemCount: controller.messagesModelObj.value
                                      .listellipsetwentytwoOneItemList.length,
                                  itemBuilder: (context, index) {
                                    ListellipsetwentytwoOneItemModel model =
                                        controller.messagesModelObj.value
                                                .listellipsetwentytwoOneItemList[
                                            index];
                                    return ListellipsetwentytwoOneItemWidget(
                                        model);
                                  }))))
                    ]))));
  }

  onTapArrowleft3() {
    Get.back();
  }
}
