import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Hitung extends GetxController {
  final hitungController = TextEditingController();

  var nominalPajak = 0.0.obs;
  var totalBayar = 0.0.obs;

  void hitungTotal() {
    double persenPajak = double.tryParse(hitungController.text) ?? 0;
    nominalPajak.value = totalBayar.value * (persenPajak / 100);
    totalBayar.value = totalBayar.value + nominalPajak.value;
  }
  }