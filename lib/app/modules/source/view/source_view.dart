import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/source_controller.dart';

class SourceView extends GetView<SourceController> {
  const SourceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Source'),
    );
  }
}
