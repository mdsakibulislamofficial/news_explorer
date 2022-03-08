import 'package:get/get.dart';

import '../controller/source_controller.dart';
import '../controller/source_details_controller.dart';

class SourceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SourceController>(
      () => SourceController(),
      fenix: true,
    );
    Get.lazyPut<SourceDetailsController>(
      () => SourceDetailsController(),
      fenix: true,
    );
  }
}
