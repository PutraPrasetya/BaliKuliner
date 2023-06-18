import 'package:get/get.dart';


import '../controllers/revise_controller.dart';

class ReviseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReviseController>(
      () => ReviseController(),
    );
  }
}
