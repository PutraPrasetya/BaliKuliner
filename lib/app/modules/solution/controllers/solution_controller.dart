import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/api_service.dart';
import '../../../model/revise_model.dart';
import '../../../model/solution.dart';

class SolutionController extends GetxController {
  late final ApiService apiService;

  late Revise _reviseResult;
  Solution? _listSolutionResult;

  String _message = '';

  String get message => _message;

  Solution? get result => _listSolutionResult;

  Future<Solution?> _getSolutionByReviceId() async {
    try {
      final restoran = await apiService.getSolution(_reviseResult.id);
      return Solution.fromJson(jsonDecode(restoran.body));
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
    _reviseResult = Get.arguments;
  }

  @override
  void onReady() {
    super.onReady();
    getDataSolution();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getDataSolution() async {
    Get.dialog(Column(
      children: [
        CircularProgressIndicator(),
      ],
    ));
    final solution = await _getSolutionByReviceId();
    if (solution != null) {
      Get.back();
      _listSolutionResult = solution;
      update();
    } else {
      Get.back();
    }
  }
}
