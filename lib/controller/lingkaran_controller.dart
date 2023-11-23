import 'package:get/get.dart';

class LingkaranController extends GetxController {
  int jarijari = 0;

  final hasil = "".obs;
  final angka = "".obs;
  void hitungLuas (){
    if (jarijari % 7 == 0) {
      num hitung = 22 * jarijari * jarijari / 7;
      hasil.value = "Hasil perhitungan Luas dari Jari - jari = $jarijari adalah $hitung";
      angka.value = "$hitung";
    } else {
      num hitung = 3.14 * jarijari * jarijari;
      hasil.value = "Hasil perhitungan Luas dari Jari - jari = $jarijari adalah $hitung";
      angka.value = "$hitung";
    }
  }
  void hitungKeliling (){
    if (jarijari % 7 == 0) {
      num hitung = 22 * (2 * jarijari) / 7;
      hasil.value = "Hasil perhitungan Keliling dari Jari - jari = $jarijari adalah $hitung";
      angka.value = "$hitung";
    } else {
      num hitung = 3.14 * (2 * jarijari);
      hasil.value = "Hasil perhitungan Keliling dari Jari - jari = $jarijari adalah $hitung";
      angka.value = "$hitung";
    }
  }
}
