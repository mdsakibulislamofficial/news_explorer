// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:news_explorer/app/modules/home/bindings/home_binding.dart';
import 'package:news_explorer/app/modules/home/view/home_view.dart';
import 'package:news_explorer/app/modules/settings/bindings/settings_binding.dart';
import 'package:news_explorer/app/modules/source/bindings/source_binding.dart';
import 'package:news_explorer/app/modules/source/view/source_view.dart';
import 'package:news_explorer/app/routes/app_route.dart';
import '../modules/main/bindings/main_baindings.dart';
import '../modules/main/view/main_view.dart';
import '../modules/search/bindings/search_binding.dart';
import '../modules/search/view/search__view.dart';
import '../modules/settings/view/settings_view.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.MAIN;
  static final routes = [
    GetPage(
      name: Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Paths.SOURCE,
      page: () => const SourceView(),
      binding: SourceBinding(),
    ),
    GetPage(
      name: Paths.SEARCH,
      page: () => const SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: Paths.SETTING,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
  ];
}
