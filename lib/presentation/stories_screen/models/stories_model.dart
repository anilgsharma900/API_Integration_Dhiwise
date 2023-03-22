import 'package:get/get.dart';
import 'listellipsefifteen1_item_model.dart';
import 'listnineteen1_item_model.dart';

class StoriesModel {
  RxList<Listellipsefifteen1ItemModel> listellipsefifteen1ItemList =
      RxList.filled(5, Listellipsefifteen1ItemModel());

  RxList<Listnineteen1ItemModel> listnineteen1ItemList =
      RxList.filled(3, Listnineteen1ItemModel());
}
