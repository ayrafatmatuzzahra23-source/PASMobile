import 'package:get/get.dart';
import 'package:pas_mobile/models/makanan_model.dart';

class ListMakananController extends GetxController {
  // Your controller logic here
  List<MakananModel> listMakanan = [
    MakananModel(
      nama: "Nasi Goreng Spesial",
      harga: 25000,
      deskripsi: "Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk.",
      gambar: "",
    ),
    MakananModel(
      nama: "Ayam Bakar Madu",
      harga: 30000,
      deskripsi: "Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.",
      gambar: "",
    ),
    MakananModel(
      nama: "Sate Ayam Madura",
      harga: 20000,
      deskripsi: "10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.",
      gambar: "",
    ),
    MakananModel(
      nama: "Mie Ayam Bakso",
      harga: 20000,
      deskripsi: "Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.",
      gambar: "",
    ),
    MakananModel(
      nama: "Es Teh Manis Jumbo",
      harga: 8000,
      deskripsi: "Minuman teh melati segar dengan gula asli dan es batu kristal.",
      gambar: "",
    ),
  ];
}