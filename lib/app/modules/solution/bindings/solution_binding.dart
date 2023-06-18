import 'package:get/get.dart';

import '../controllers/solution_controller.dart';

class SolutionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SolutionController>(
      () => SolutionController(),
    );
  }
}
