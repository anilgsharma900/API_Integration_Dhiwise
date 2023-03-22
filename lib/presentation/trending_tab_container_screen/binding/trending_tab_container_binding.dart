import '../controller/trending_tab_container_controller.dart';
import 'package:get/get.dart';

class TrendingTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrendingTabContainerController());
  }
}
