import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/api_service.dart';
import '../../../model/restoran_model.dart';
import '../../../routes/app_pages.dart';

class SearchController extends GetxController {
  //TODO: Implement SearchController

  List<String> listDaerah = [
    'Daerah',
    'Badung',
    'Denpasar',
    'Denpasar Selatan',
    'Denpasar Utara',
    'Denpasar Timur',
    'Denpasar Barat',
    'Kuta',
    'Gatsu Barat',
    'Gianyar',
    'Kapal',
    'Munggu',
    'Singaraja',
    'Tabanan'
  ];
  String? selDaerah = 'Daerah';

  List<String> listTempat = ['Tempat', 'Warung', 'Rumah Makan'];
  String? selTempat = 'Tempat';

  List<String> listKategori = [
    'Kategori',
    'Ayam',
    'Babi',
    'Bebek',
    'Ikan',
    'Jajanan',
    'Sayur'
  ];
  String? selKategori = 'Kategori';

  List<String> listJenis = [
    'Jenis',
    'Ares',
    'Babi Guling',
    'Babi Kecap',
    'Betutu',
    'Ikan',
    'Jaje Bali',
    'Lawar',
    'Sate',
    'Soto'
  ];
  String? selJenis = 'Jenis';

  List<String> listRasa = ['Rasa', 'Asam', 'Gurih', 'Manis', 'Pedas'];
  String? selRasa = 'Rasa';

  List<String> listHarga = ['Harga', '10K', '30K', '50K', '>50K'];
  String? selHarga = 'Harga';

  List<String> listRating = [
    'Rating',
    'Cukup',
    'Cukup Baik',
    'Baik',
    'Sangat Baik',
  ];
  String? selRating = 'Rating';

  late final ApiService apiService;

  late Restoran _listRestoranResult;
  String _message = '';

  String get message => _message;

  Restoran get result => _listRestoranResult;

  @override
  void onInit() {
    super.onInit();
    apiService = ApiService();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<Restoran?> _postRestoran() async {
    try {
      final restoran = await apiService.postRestoran(
          selDaerah.toString(),
          selTempat.toString(),
          selKategori.toString(),
          selJenis.toString(),
          selRasa.toString(),
          selHarga.toString(),
          selRating.toString());
      return Restoran.fromJson(jsonDecode(restoran.body));
    } catch (e) {
      print(e);
      _message = 'Error --> $e';
      return null;
    }
  }

  Future<void> addRestoran() async {
    Get.dialog(Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircularProgressIndicator(),
      ],
    ));
    final reco = await _postRestoran();
    if (reco != null) {
      Get.back();
      Get.toNamed(Routes.RECOMENDATION, arguments: reco);
    } else {
      Get.back();
      Get.defaultDialog(
        title: "Hasil Rekomendasi",
        middleText: "Rekomendasi Tidak di Temukan",
      );
    }
  }
}
