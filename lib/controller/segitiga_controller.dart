import 'package:get/get.dart';

class SegitigaController extends GetxController {
  int alas = 0;
  int tinggi = 0;

  final hasil = "".obs;
  final angka = "".obs;
  void hitungLuas (){
    num hitung = alas * tinggi / 2;
    hasil.value = "Hasil perhitungan Luas dari Alas = $alas Tinggi = $tinggi adalah $hitung";
    angka.value = "$hitung";
  }
  void hitungKeliling (){
    num hitung = 3 * alas;
    hasil.value = "Hasil perhitungan Keliling dari Alas = $alas adalah $hitung";
    angka.value = "$hitung";
  }
}
