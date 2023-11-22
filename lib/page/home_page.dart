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
                  Expanded(child: CustomMenu(title: "Persegi", imageAsset: "assets/persegi.jpg", warna: 0xFFDEE305)),
                  Expanded(child: CustomMenu(title: "Persegi Panjang", imageAsset: "assets/persegipanjang.jpg", warna: 0xFF00CC05)),
                ],
              ),
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(child: CustomMenu(title: "Segitiga", imageAsset: "assets/segitiga.jpg", warna: 0xFFC50000)),
                  Expanded(child: CustomMenu(title: "Lingkaran", imageAsset: "assets/lingkaran.jpg", warna: 0xFFF10000)),
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
        decoration: BoxDecoration(color: Color(warna), borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageAsset,
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ],
        ));
  }
}
