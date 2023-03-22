import '../controller/trending_posts_controller.dart';
import 'package:get/get.dart';

class TrendingPostsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrendingPostsController());
  }
}
