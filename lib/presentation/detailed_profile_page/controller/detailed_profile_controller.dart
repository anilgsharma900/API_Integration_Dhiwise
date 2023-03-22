import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/detailed_profile_page/models/detailed_profile_model.dart';

class DetailedProfileController extends GetxController {
  DetailedProfileController(this.detailedProfileModelObj);

  Rx<DetailedProfileModel> detailedProfileModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
