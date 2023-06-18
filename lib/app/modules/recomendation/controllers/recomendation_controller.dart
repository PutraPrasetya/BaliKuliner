import 'package:get/get.dart';

import '../../../model/restoran_model.dart';

class RecomendationController extends GetxController {
  //TODO: Implement RecomendationController

  bool isChecked = false;
  Restoran? rekomendasi;

  @override
  void onInit() {
    super.onInit();
    rekomendasi = Get.arguments;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
