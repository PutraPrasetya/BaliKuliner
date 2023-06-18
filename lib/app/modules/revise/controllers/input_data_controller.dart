import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/api_service.dart';
import '../../../model/restoran_model.dart';
import '../../../model/revise_model.dart';
import '../../../routes/app_pages.dart';

class InputDataController extends GetxController {
  //TODO: Implement InputDataController

  TextEditingController? textEditingNama;

  TextEditingController? textEditingLong;

  TextEditingController? textEditingLat;

  TextEditingController? textEditingNoTelp;

  TextEditingController? textEditingHarga;

  TextEditingController? textEditingRating;

  late final ApiService apiService;

  late Revise _reviseResult;
  String _message = '';

  String get message => _message;

  Revise get result => _reviseResult;

  @override
  void onInit() {
    super.onInit();
    textEditingNama = TextEditingController();
    textEditingLong = TextEditingController();
    textEditingLat = TextEditingController();
    textEditingNoTelp = TextEditingController();
    textEditingHarga = TextEditingController();
    textEditingRating = TextEditingController();
    apiService = ApiService();
  }

  @override
  void onReady() {
    _reviseResult = Get.arguments;
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<String?> _postRestoran() async {
    try {
      final restoran = await apiService.postSolution(
        _reviseResult.id,
        textEditingNama?.text.toString() ?? "",
        textEditingLat?.text.toString() ?? "",
        textEditingLong?.text.toString() ?? "",
        textEditingNoTelp?.text.toString() ?? "",
        textEditingHarga?.text.toString() ?? "",
        textEditingRating?.text.toString() ?? "",
        _reviseResult.daerah,
        _reviseResult.tempat,
        _reviseResult.kategori,
        _reviseResult.jenis,
        _reviseResult.rasa,
      );
      return jsonDecode(restoran.body)['data'];
    } catch (e) {
      print(e);
      _message = 'Error --> $e';
      return null;
    }
  }

  Future<void> addSolution() async {
    Get.dialog(Column(
      children: [
        CircularProgressIndicator(),
      ],
    ));
    final reco = await _postRestoran();
    if (reco != null) {
      Get.back();
      Get.offAllNamed(Routes.HOME);
    } else {
      Get.back();
      Get.defaultDialog(
        title: "Hasil Rekomendasi",
        middleText: "Rekomendasi Tidak di Temukan",
      );
    }
  }
}
