import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/component/my_button.dart';
import 'package:pas_mobile/component/my_text_field.dart';
import 'package:pas_mobile/controller/transaksi_pembelian_controller.dart';

class TransaksiPembelianPage extends StatelessWidget {
  TransaksiPembelianPage({super.key});

  final controller = Get.put(TransaksiPembelianController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaksi Pembelian", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              controller.gambar,
              width: double.infinity,
              height: 250,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: Center(
                  child: Icon(
                    Icons.fastfood,
                    color: Colors.grey,
                    size: 80,
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.harga,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    controller.namaMakanan,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.store, color: Colors.grey, size: 20),
                      SizedBox(width: 4),
                    ],
                  ),
                  Divider(height: 32),
                  Text(
                    "Deskripsi",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(controller.deskripsi),
                      ),
                    ),
                  ),
                  MyTextField(
                    controller: TextEditingController(),
                    myHint: "Jumlah",
                    radius: 5,
                  ),
                  MyButton(
                  text: "bayar",
                  buttonColor: const Color.fromARGB(255, 255, 255, 255),
                  width: 350,
                  onPressed: () {
                    controller.hitungPembelian(controller.jumlah.value.toString());
                  },
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