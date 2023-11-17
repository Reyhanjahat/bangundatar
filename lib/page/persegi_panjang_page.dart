import 'package:bangun_datar_kelas_b/controller/persegi_panjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({Key? key}) : super(key: key);

  final PersegiPanjangController _persegiPanjangController = Get.put(PersegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Persegi Panjang Page"),
      ),
      body: Column(
        children: [
          Image.asset("assets/persegi-panjang.jpg", height: 100),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Persegi Panjang",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.green.shade300,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Persegi panjang adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yang memiliki panjang yang sama dan empat sudut yang semuanya siku-siku. Persegi panjang memiliki sifat-sifat khusus seperti luas dan keliling yang dapat dihitung menggunakan rumus tertentu.",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    onChanged: (value) {
                      _persegiPanjangController.panjang = double.parse(value);
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Panjang",
                      hintText: "Masukkan Panjang",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    onChanged: (value) {
                      _persegiPanjangController.lebar = double.parse(value);
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Lebar",
                      hintText: "Masukkan Lebar",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _persegiPanjangController.hitungLuas();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  child: Text(
                    "Hitung Luas",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 8), // Jarak antara tombol
                ElevatedButton(
                  onPressed: () {
                    _persegiPanjangController.hitungKeliling();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                  ),
                  child: Text(
                    "Hitung Keliling",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Obx(() => Text(_persegiPanjangController.hasil.value)),
        ],
      ),
    );
  }
}