import 'package:bangun_datar_kelas_b/controller/lingkaran_controller.dart';
import 'package:bangun_datar_kelas_b/page/lingkaran_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class lingkaranPage extends StatelessWidget {
  lingkaranPage({super.key});
  final LingkaranController _lingkaranController = Get.put(LingkaranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Lingkaran Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            //bagian image
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      "assets/lingkaran.png",
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Bangun Datar Lingkaran',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: 'sans-serif',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //end bagian image

            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Text(
                'lingkaran adalah bangun datar dua dimensi yang terbentuk dari sekumpulan titik dengan jarak yang konstan atau teratur dari titik tetap pada sebuah bidang. Titik tetap pada sebuah bangun datar lingkaran ini disebut juga dengan titik asal atau titik pusat lingkaran.', style:
              TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      onChanged: ((value) => {
                        _lingkaranController.jari = int.parse(value),
                      }),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Jari-jari lingkaran",
                          hintText: "Masukkan jari-jari",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.grey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.grey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1, color: Colors.blue),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.all(20),
                            ),
                            onPressed: () {
                              _lingkaranController.hitungLuas();
                            },
                            child: Text(
                              'Hitung Luas',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              padding: EdgeInsets.all(20),
                            ),
                            onPressed: () {
                              _lingkaranController.hitungKeliling();
                            },
                            child: Text(
                              'Hitung Keliling',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),

              child: Column(
                children: [
                  Text(
                    'Perhitungan :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Obx(
                          () => Text(
                        _lingkaranController.hasil.value,
                        style: TextStyle(
                          color: _lingkaranController.Color.value,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  Text(
                      '==============================================='
                  ),

                  Text(
                    'Thank You',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}