import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/controller/list_makanan_controller.dart';
import 'package:pas_mobile/routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 230,
          margin: const EdgeInsets.only(top: 50, left: 10, right: 10),
          child: Obx(
            () => ListView.builder(
              itemCount: controller.listMakanan.length,
              itemBuilder: (context, index) {
                final makanan = controller.listMakanan[index];
                return SizedBox(
                  width: 160,
                  child: Card(
                    elevation: 0,
                    color: Colors.white,
                    surfaceTintColor: Colors.transparent,
                    clipBehavior: Clip.antiAlias,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(
                          Routes.transaksipembelian,
                          arguments: {
                            'namaMakanan': makanan.nama,
                            'harga': makanan.harga,
                            'deskripsi': makanan.deskripsi,
                            'gambar': makanan.gambar,
                          },
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 120,
                            child: Image.network(
                              makanan.gambar,
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) {
                                return const Icon(
                                  Icons.medication,
                                  color: Colors.grey,
                                  size: 60,
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
                            child: SizedBox(
                              height: 38,
                              child: Text(
                                makanan.nama,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 4, 10, 0),
                            child: Text(
                              'Rp ${makanan.harga.toStringAsFixed(0)}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}