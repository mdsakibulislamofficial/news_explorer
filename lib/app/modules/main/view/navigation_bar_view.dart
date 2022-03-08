import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_explorer/app/core/values/app_colors.dart';
import 'package:news_explorer/app/modules/main/controller/Navigation_controller.dart';

class NavigationBarView extends GetView<NavigationContorller> {
  NavigationBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NavigationContorller navigationBarController =
        Get.put(NavigationContorller());
    return Obx(() => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.colorPrimary,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            navigationBarController.changeIndex(index);
          },
          currentIndex: navigationBarController.selectedIndex.value,
          items: items,
        ));
  }

  List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.source_outlined),
      label: 'Source',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.settings_outlined),
      label: 'Setting',
    ),
  ];
}
