import 'package:get/get.dart';
import 'listnineteen_item_model.dart';
import 'listfive_item_model.dart';

class DailyNewModel {
  RxList<ListnineteenItemModel> listnineteenItemList =
      RxList.filled(3, ListnineteenItemModel());

  RxList<ListfiveItemModel> listfiveItemList =
      RxList.filled(2, ListfiveItemModel());
}
