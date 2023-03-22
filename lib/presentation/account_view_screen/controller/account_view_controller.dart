import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/account_view_screen/models/account_view_model.dart';

class AccountViewController extends GetxController {
  Rx<AccountViewModel> accountViewModelObj = AccountViewModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
