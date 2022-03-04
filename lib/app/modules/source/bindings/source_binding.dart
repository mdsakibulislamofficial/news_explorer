import 'package:get/get.dart';

import '../controller/source_controller.dart';

class SourceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SourceController>(
      () => SourceController(),
      fenix: true,
    );
  }
}
