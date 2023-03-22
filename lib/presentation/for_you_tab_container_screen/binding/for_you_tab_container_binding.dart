import '../controller/for_you_tab_container_controller.dart';
import 'package:get/get.dart';

class ForYouTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForYouTabContainerController());
  }
}
