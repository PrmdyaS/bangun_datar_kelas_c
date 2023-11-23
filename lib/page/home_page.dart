import 'package:bangun_datar_kelas_c/page/lingkaran_page.dart';
import 'package:bangun_datar_kelas_c/page/persegi_page.dart';
import 'package:bangun_datar_kelas_c/page/persegipanjang_page.dart';
import 'package:bangun_datar_kelas_c/page/segitiga_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.green.shade300,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: InkWell(
                    onTap: (){
                      String title = "PERSEGI";
                      String imageAsset = "assets/persegi.png";
                      int warna = 0xFF8D9DFB;
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage(
                        title: title,
                        imageAsset: imageAsset,
                        warna: warna,
                      )));
                    },
                    child: CustomMenu(
                      title: "PERSEGI",
                      imageAsset: "assets/persegi.png",
                      warna: 0xFF8D9DFB))),
                Expanded(child: InkWell(
                    onTap: (){
                      String title = "PERSEGI PANJANG";
                      String imageAsset = "assets/persegipanjang.png";
                      int warna = 0xFFFDA22D;
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPanjangPage(
                        title: title,
                        imageAsset: imageAsset,
                        warna: warna,
                      )));
                    },
                    child: CustomMenu(
                        title: "PERSEGI PANJANG",
                        imageAsset: "assets/persegipanjang.png",
                        warna: 0xFFFDA22D))),
              ],
            ),
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(child: InkWell(
                      onTap: (){
                        String title = "SEGITIGA";
                        String imageAsset = "assets/segitiga.png";
                        int warna = 0xFF17D8D8;
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SegitigaPage(
                          title: title,
                          imageAsset: imageAsset,
                          warna: warna,
                        )));
                      },
                      child: CustomMenu(
                          title: "SEGITIGA",
                          imageAsset: "assets/segitiga.png",
                          warna: 0xFF17D8D8))),
                  Expanded(child: InkWell(
                      onTap: (){
                        String title = "LINGKARAN";
                        String imageAsset = "assets/lingkaran.png";
                        int warna = 0xFF3E7781;
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LingkaranPage(
                          title: title,
                          imageAsset: imageAsset,
                          warna: warna,
                        )));
                      },
                      child: CustomMenu(
                          title: "LINGKARAN",
                          imageAsset: "assets/lingkaran.png",
                          warna: 0xFF3E7781))),
                ],
              )
          )
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title, required this.warna,
  });

  final String imageAsset;
  final String title;
  final int warna;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(color: Color(warna),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageAsset,
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ));
  }
}
