import 'package:bangun_datar_kelas_c/controller/persegipanjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
  final String title;
  final String imageAsset;
  final int warna;

  PersegiPanjangPage({Key? key, required this.title, required this.imageAsset, required this.warna}) : super(key: key);
  final PersegiPanjangController _persegiPanjangController = Get.put(PersegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: TextStyle(color: Color(0xFFFFFFFF))),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(warna),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Image.asset(
                imageAsset,
                height: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Container(
              width: 10000,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(color: Color(warna),
              borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Text(
                "Persegi panjang adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yang masing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(color: Color(warna),
                borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  children: [
                SizedBox(
                  width: 250,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: TextFormField(
                      onChanged: (value) {
                        _persegiPanjangController.panjang = int.parse(value);
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Panjang",
                        hintText: "Masukkan Panjang",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding: EdgeInsets.symmetric(
                        vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                    SizedBox(
                      width: 250,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: TextFormField(
                          onChanged: (value) {
                            _persegiPanjangController.lebar = int.parse(value);
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Lebar",
                            hintText: "Masukkan Lebar",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.blue),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                Container(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {
                      _persegiPanjangController.hitungKeliling();
                    }, child: Text("Hitung Keliling"), style: ElevatedButton.styleFrom(
                      primary: Colors.greenAccent,
                      onPrimary: Colors.white,
                    ),),
                    SizedBox(width: 15),
                    ElevatedButton(onPressed: () {
                      _persegiPanjangController.hitungLuas();
                    }, child: Text("Hitung Luas"), style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                      onPrimary: Colors.white,
                    )),
                  ],
                )),
              ],
            )
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(color: Color(warna),
                borderRadius: BorderRadius.all(Radius.circular(8))),
                width: 10000000,
                height: 200,
                child: Column(
                  children: [
                    Text("Hasil :", style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                    )),
                    Obx(() => Text(_persegiPanjangController.angka.value, textAlign: TextAlign.center, style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 75,
                      fontWeight: FontWeight.bold,
                    ),)),
                    Obx(() => Text(_persegiPanjangController.hasil.value, textAlign: TextAlign.center, style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16)))
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
