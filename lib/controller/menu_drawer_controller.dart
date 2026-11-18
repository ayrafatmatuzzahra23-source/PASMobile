import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/menu/feat.dart';
import 'package:pas_mobile/menu/home.dart';
import 'package:pas_mobile/menu/profile.dart';

class MenuDrawerController extends GetxController {

  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
    
  }
  final List<Widget> listPages = [HomePage(), FeatPage(), ProfilePage()];
}