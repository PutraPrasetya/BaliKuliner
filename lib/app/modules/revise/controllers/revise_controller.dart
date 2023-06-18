import 'dart:convert';

import 'package:app_restaurant/app/model/revise_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/api_service.dart';

class ReviseController extends GetxController {
  late final ApiService apiService;

  Revises? _listRevisesResult;
  String _message = '';

  String get message => _message;

  Revises? get result => _listRevisesResult;

  Future<Revises?> _getRevises() async {
    try {
      final restoran = await apiService.getRevises();
      return Revises.fromJson(jsonDecode(restoran.body));
    } catch (e) {
      print(e);
      _message = 'Error --> $e';
      return null;
    }
  }

  @override
  void onInit() {
    super.onInit();
    apiService = ApiService();
  }

  @override
  void onReady() {
    super.onReady();
    getDataRevises();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getDataRevises() async {
    Get.dialog(Column(
      children: [
        CircularProgressIndicator(),
      ],
    ));
    final revises = await _getRevises();
    if (revises != null) {
      Get.back();
      _listRevisesResult = revises;
      update();
    } else {
      Get.back();
    }
  }
}
