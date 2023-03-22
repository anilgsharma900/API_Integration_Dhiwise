import 'package:get/get.dart';
import 'trending_posts_item_model.dart';

class TrendingPostsModel {
  RxList<TrendingPostsItemModel> trendingPostsItemList =
      RxList.filled(4, TrendingPostsItemModel());
}
