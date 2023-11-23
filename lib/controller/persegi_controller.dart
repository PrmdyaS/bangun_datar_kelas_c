import 'package:get/get.dart';

class PersegiController extends GetxController {
  int sisi = 0;

  final hasil = "".obs;
  final angka = "".obs;
  void hitungLuas (){
    int hitung = sisi * sisi;
    hasil.value = "Hasil perhitungan Luas dari Sisi = $sisi adalah $hitung";
    angka.value = "$hitung";
  }
  void hitungKeliling (){
    int hitung = 4 * sisi;
    hasil.value = "Hasil perhitungan Keliling dari Sisi = $sisi adalah $hitung";
    angka.value = "$hitung";
  }
}
