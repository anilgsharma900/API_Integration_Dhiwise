import 'package:get/get.dart';
import 'listeight_item_model.dart';
import 'listellipsefifteen2_item_model.dart';

class AccountDetailsModel {
  RxList<ListeightItemModel> listeightItemList =
      RxList.filled(3, ListeightItemModel());

  RxList<Listellipsefifteen2ItemModel> listellipsefifteen2ItemList =
      RxList.filled(5, Listellipsefifteen2ItemModel());
}
