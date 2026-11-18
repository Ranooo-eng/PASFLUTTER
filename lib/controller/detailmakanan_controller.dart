import 'package:get/get.dart';
import 'package:ujian/models/makanan_model.dart';

class DetailMakananController extends GetxController {
  late String namaMakanan;
  late String deskripsiMakanan;
  late String hargaMakanan;
  late String gambarMakanan;
  late String ratingMakanan;

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments  != null) {
      final Makananmodel makanan = Get.arguments;
      namaMakanan = makanan.namaMakanan;
      deskripsiMakanan = makanan.deskripsiMakanan;
      hargaMakanan = makanan.hargaMakanan.toString();
      gambarMakanan = makanan.gambarMakanan;
      ratingMakanan = makanan.ratingMakanan;
    }
  }
}