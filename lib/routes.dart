import 'package:get/get.dart';
import 'pages/main_menu_pages.dart';

class Routes {
  static const store = '/';

  static final myPages = [
    GetPage(
      name: store,
      page: () => const MainMenuPages(),
    ),
  ];
}