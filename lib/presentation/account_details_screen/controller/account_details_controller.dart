import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/account_details_screen/models/account_details_model.dart';

class AccountDetailsController extends GetxController {
  Rx<AccountDetailsModel> accountDetailsModelObj = AccountDetailsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
