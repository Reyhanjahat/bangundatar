import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Home Page",
        style: TextStyle(color: Colors.black),
        ),
      backgroundColor: Colors.red),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/persegi.png",title: "Persegi")),
              Expanded(child: CustomMenu(imageAsset: "assets/persegi panjang.jpg",title: "Persegi Panjang")),
            ],
          ),
          CustomMenu(imageAsset: "assets/lingkaran.png",title: "Lingkaran"),
          CustomMenu(imageAsset: "assets/segitiga.png",title: "Segitiga"),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });

  final String imageAsset;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.purple,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Column(
          children: [
            Image.asset(imageAsset, height: 100,),
            Text(title, style: TextStyle(color: Colors.white,
            ),
            ),
          ],
        )
    );
  }
}