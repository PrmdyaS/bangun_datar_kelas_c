import 'package:get/get.dart';

class PersegiPanjangController extends GetxController {
  int panjang = 0;
  int lebar = 0;

  final hasil = "".obs;
  final angka = "".obs;
  void hitungLuas (){
    int hitung = panjang * lebar;
    hasil.value = "Hasil perhitungan Luas dari Panjang = $panjang Lebar = $lebar adalah $hitung";
    angka.value = "$hitung";
  }
  void hitungKeliling (){
    int hitung = 2 * (panjang+lebar);
    hasil.value = "Hasil perhitungan Keliling dari Panjang = $panjang Lebar = $lebar adalah $hitung";
    angka.value = "$hitung";
  }
}
