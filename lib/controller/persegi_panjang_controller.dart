import 'package:get/get.dart';

class PersegiPanjangController extends GetxController {
  double panjang = 0;
  double lebar = 0;

  final hasil = "".obs;

  void hitungLuas() {
    double luas = panjang * lebar;
    hasil.value = "Hasil Perhitungan luas persegi panjang: $luas";
  }

  void hitungKeliling() {
    double keliling = 2 * (panjang + lebar);
    hasil.value = "Hasil Perhitungan keliling persegi panjang: $keliling";
  }
}