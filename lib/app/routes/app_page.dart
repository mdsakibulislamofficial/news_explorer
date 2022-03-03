// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:news_explorer/app/routes/app_route.dart';
import '../modules/main/bindings/main_baindings.dart';
import '../modules/main/view/main_view.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.MAIN;
  static final routes = [
    GetPage(
      name: Paths.MAIN,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
  ];
}
