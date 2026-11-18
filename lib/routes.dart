import 'package:get/get.dart';
import 'package:pas_mobile/pages/login_page.dart';
import 'package:pas_mobile/pages/menu_drawer_page.dart';
import 'package:pas_mobile/pages/transaksi_pembelian_page.dart';

class Routes {
  static const String login = '/login';
  static const String menudrawerpage = '/menudrawerpage';
  static const String listmakann = '/listmakann';
  static const String transaksipembelian = '/transaksipembelian';

  static final myPages = [
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: menudrawerpage, page: () => MenuDrawer()),
    GetPage(name: transaksipembelian, page: () => TransaksiPembelianPage()),
  ];
}
