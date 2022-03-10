import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_explorer/app/modules/source/controller/source_details_controller.dart';

class SourceDetailsView extends GetView<SourceDetailsController> {
  SourceDetailsView({Key? key}) : super(key: key);

  final String appbartitle = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
