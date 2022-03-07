import 'package:get/get.dart';

class HomeController extends GetxController {
  var menuIndex = 0.obs;

  void changeMenuIndex(index) {
    menuIndex.value = index;
  }
}
