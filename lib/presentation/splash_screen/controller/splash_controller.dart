import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/splash_screen/models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:social_template/data/models/currentJson/get_current_json_resp.dart';
import 'package:social_template/data/apiClient/api_client.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  GetCurrentJsonResp getCurrentJsonResp = GetCurrentJsonResp();

  @override
  Future<void> onReady() async {
    super.onReady();
    Map<String, dynamic> queryParams = {};
    try {
      await this.callFetchCurrentJson(
        queryParams: queryParams,
      );
      _onFetchCurrentJsonSuccess();
    } on GetCurrentJsonResp {
      _onFetchCurrentJsonError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> callFetchCurrentJson(
      {Map<String, dynamic> queryParams = const {}}) async {
    try {
      getCurrentJsonResp = await Get.find<ApiClient>()
          .fetchCurrentJson(queryParams: queryParams);
      _handleFetchCurrentJsonSuccess();
    } on GetCurrentJsonResp catch (e) {
      getCurrentJsonResp = e;
      rethrow;
    }
  }

  void _handleFetchCurrentJsonSuccess() {}
  void _onFetchCurrentJsonSuccess() {}
  void _onFetchCurrentJsonError() {}
}
