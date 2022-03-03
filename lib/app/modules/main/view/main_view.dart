import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../controller/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        appBarTitleText: 'News Explorer',
      ),
    );
  }
}
