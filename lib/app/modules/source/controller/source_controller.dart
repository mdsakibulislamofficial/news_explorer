import 'package:get/get.dart';
import 'package:news_explorer/app/modules/source/model/source_model.dart';

import 'package:news_explorer/app/network/featch_source.dart';

class SourceController extends GetxController {
  var sourceList = <Source>[].obs;

  void featchdata() async {
    var values = await FeatchSource().featchSource();

    if (values != null) {
      sourceList.value = values;
    }
  }
}
