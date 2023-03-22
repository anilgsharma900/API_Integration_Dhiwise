import '../controller/account_view_controller.dart';
import 'package:get/get.dart';

class AccountViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountViewController());
  }
}
