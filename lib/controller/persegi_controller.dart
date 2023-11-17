import 'package:get/get.dart';
import 'package:flutter/material.dart';
class PersegiController extends GetxController{
  int sisi =0;
  final hasil = "".obs;
  final warna = Rx<Color>(Colors.black);

  void hitungluas(){

    int hitung = sisi * sisi;
    warna.value = Colors.red;
    hasil.value = "Hitung Perhitungan Luas Dari $sisi x $sisi = $hitung";
  }
  void hitungkeliling() {
    int hitung = sisi * 4;
    warna.value = Colors.purple;
    hasil.value = "Hitung Perhitungan Keliling Dari $sisi  = $hitung";
  }
}