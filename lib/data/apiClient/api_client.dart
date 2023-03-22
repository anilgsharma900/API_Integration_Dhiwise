import 'package:social_template/core/app_export.dart';
import 'package:social_template/core/utils/progress_dialog_utils.dart';
import 'package:social_template/data/models/currentJson/get_current_json_resp.dart';

class ApiClient extends GetConnect {
  var url = "http://api.weatherapi.com";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = Duration(seconds: 60);
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

  Future<GetCurrentJsonResp> fetchCurrentJson(
      {Map<String, dynamic> queryParams = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response =
          await httpClient.get('$url/v1/current.json', query: queryParams);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return GetCurrentJsonResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? GetCurrentJsonResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      rethrow;
    }
  }
}
