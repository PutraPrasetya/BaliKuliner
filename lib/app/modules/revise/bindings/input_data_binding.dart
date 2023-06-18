import 'package:get/get.dart';

import 'package:app_restaurant/app/modules/revise/controllers/input_data_controller.dart';

class InputDataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InputDataController>(
      () => InputDataController(),
    );
  }
}
