import '../discover_page/widgets/discover_item_widget.dart';
import 'controller/discover_controller.dart';
import 'models/discover_item_model.dart';
import 'models/discover_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/app_bar/appbar_circleimage.dart';
import 'package:social_template/widgets/app_bar/appbar_searchview.dart';
import 'package:social_template/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class DiscoverPage extends StatelessWidget {
  DiscoverController controller =
      Get.put(DiscoverController(DiscoverModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(53.00),
                title: AppbarSearchview(
                    hintText: "lbl_search".tr,
                    controller: controller.group9020Controller,
                    margin: getMargin(left: 16)),
                actions: [
                  AppbarCircleimage(
                      imagePath: ImageConstant.imgEllipse14,
                      margin: getMargin(left: 16, top: 5, right: 19, bottom: 8))
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(top: 19, bottom: 19),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(left: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtTrending();
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 6, bottom: 1),
                                        child: Text("lbl_trending".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtInterRegular18))),
                                Padding(
                                    padding: getPadding(top: 5, bottom: 2),
                                    child: Text("lbl_latest".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular18)),
                                Text("lbl_discover".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold24),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtDailyNew();
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 6, bottom: 2),
                                        child: Text("lbl_daily_new".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular18)))
                              ])),
                      Container(
                          height: getVerticalSize(214.00),
                          child: Obx(() => ListView.builder(
                              padding: getPadding(left: 16, top: 35),
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: controller.discoverModelObj.value
                                  .discoverItemList.length,
                              itemBuilder: (context, index) {
                                DiscoverItemModel model = controller
                                    .discoverModelObj
                                    .value
                                    .discoverItemList[index];
                                return DiscoverItemWidget(model);
                              }))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(401.00),
                              width: getHorizontalSize(382.00),
                              margin: getMargin(top: 30, bottom: 4),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: getVerticalSize(384.00),
                                        width: getHorizontalSize(382.00),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.deepPurpleA200,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(15.00)),
                                            boxShadow: [
                                              BoxShadow(
                                                  color:
                                                      ColorConstant.black90019,
                                                  spreadRadius:
                                                      getHorizontalSize(2.00),
                                                  blurRadius:
                                                      getHorizontalSize(2.00),
                                                  offset: Offset(2, 1))
                                            ]))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 24, right: 24),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse21,
                                                    height: getSize(50.00),
                                                    width: getSize(50.00),
                                                    radius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                25.00))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 8,
                                                        bottom: 4),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "lbl_rizal_reynaldhi"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterMedium18),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 2),
                                                              child: Text(
                                                                  "lbl_35_minutes_ago"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterMedium10Bluegray100))
                                                        ])),
                                                Spacer(),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgGroup8916,
                                                    height:
                                                        getVerticalSize(6.00),
                                                    width: getHorizontalSize(
                                                        30.00),
                                                    margin: getMargin(
                                                        top: 22, bottom: 22))
                                              ]),
                                              Container(
                                                  width:
                                                      getHorizontalSize(295.00),
                                                  margin: getMargin(top: 26),
                                                  child: Text(
                                                      "msg_me_and_my_frien".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular16)),
                                              Padding(
                                                  padding: getPadding(top: 16),
                                                  child: Row(children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            bottom: 1),
                                                        child: Text(
                                                            "lbl_beach".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular14)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 31,
                                                            bottom: 1),
                                                        child: Text(
                                                            "lbl_ocean".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular14)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 30, top: 1),
                                                        child: Text(
                                                            "lbl_holiday".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular14))
                                                  ])),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.img211,
                                                  height:
                                                      getVerticalSize(227.00),
                                                  width:
                                                      getHorizontalSize(334.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(15.00)),
                                                  margin: getMargin(top: 12))
                                            ])))
                              ])))
                    ]))));
  }

  onTapTxtTrending() {
    Get.toNamed(AppRoutes.trendingTabContainerScreen);
  }

  onTapTxtDailyNew() {
    Get.toNamed(AppRoutes.dailyNewScreen);
  }
}
