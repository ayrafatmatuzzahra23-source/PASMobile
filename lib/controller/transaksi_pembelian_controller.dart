import 'package:get/get.dart';

class TransaksiPembelianController extends GetxController {
  late String namaMakanan;
  late String harga;
  late String deskripsi;
  late String gambar;
  var jumlah = 0.0.obs;
  var hargaMakanan = 0.0.obs;
  var jumlahPPN = 0.0.obs;
  var totalBayar = 0.0.obs;

  void hitungPembelian(String inputJumlah) {
    double jumlah = 0.0;

    if (inputJumlah != "") {
      jumlah = double.parse(inputJumlah);

      hargaMakanan.value = double.parse(harga) * jumlah;
      jumlahPPN.value = hargaMakanan.value * 0.05;
      totalBayar.value = hargaMakanan.value + jumlahPPN.value;
     }
    }

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    namaMakanan = arguments['namaMakanan'];
    harga = arguments['harga'];
    deskripsi = arguments['deskripsi'];
    gambar = arguments['gambar'];
  }
}