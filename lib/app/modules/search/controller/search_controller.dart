import 'package:get/get.dart';
import 'package:news_explorer/app/modules/home/model/all_news_model.dart';
import 'package:news_explorer/app/network/dio_search.dart';

class SearchController extends GetxController {
  var searchNewsList = List<Article>.empty(growable: true).obs;
  var isloading = true.obs;
  @override
  void onInit() {
    super.onInit();
    searchResult('us');
  }

  void searchResult(query) async {
    var search = await Search().search(query);

    try {
      if (search != null) {
        searchNewsList.clear();
        searchNewsList.addAll(search);
      }
    } finally {
      isloading.value = false;
    }
  }
}
