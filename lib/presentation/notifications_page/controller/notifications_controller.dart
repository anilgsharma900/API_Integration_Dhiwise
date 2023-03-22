import 'package:social_template/core/app_export.dart';
import 'package:social_template/presentation/notifications_page/models/notifications_model.dart';

class NotificationsController extends GetxController {
  NotificationsController(this.notificationsModelObj);

  Rx<NotificationsModel> notificationsModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
