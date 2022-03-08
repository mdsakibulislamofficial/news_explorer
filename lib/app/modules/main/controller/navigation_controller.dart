import 'package:get/get.dart';

class NavigationContorller extends GetxController {
  var selectedIndex = 0.obs;

  changeIndex(index) {
    selectedIndex.value = index;
  }
}
