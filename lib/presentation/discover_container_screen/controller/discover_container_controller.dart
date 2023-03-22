import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/discover_container_screen/models/discover_container_model.dart';
import 'package:social_template/widgets/custom_bottom_bar.dart';

class DiscoverContainerController extends GetxController {
  Rx<DiscoverContainerModel> discoverContainerModelObj =
      DiscoverContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
