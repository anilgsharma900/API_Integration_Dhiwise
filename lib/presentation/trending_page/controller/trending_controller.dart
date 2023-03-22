import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/trending_page/models/trending_model.dart';

class TrendingController extends GetxController {
  TrendingController(this.trendingModelObj);

  Rx<TrendingModel> trendingModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
