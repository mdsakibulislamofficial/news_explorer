import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../controller/Navigation_controller.dart';
import '../controller/main_controller.dart';
import '../model/manu_code.dart';
import 'navigation_bar_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NavigationContorller navigationContorller = Get.put(NavigationContorller());

    return Scaffold(
      appBar: CustomAppBar(
        appBarTitleText: AppLocalizations.of(context)!.appbartitle,
      ),
      body: Obx(
        () => IndexedStack(
          index: navigationContorller.selectedIndex.value,
          children: screens,
        ),
      ),
      bottomNavigationBar: NavigationBarView(),
    );
  }
}
