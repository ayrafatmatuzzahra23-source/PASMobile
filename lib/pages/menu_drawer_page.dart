import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/controller/menu_drawer_controller.dart';

class MenuDrawer extends StatelessWidget {
  MenuDrawer({super.key});

  final controller = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(title: const Text('Kulinerku')),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                child: Text(
                  'Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  controller.changePage(0);
                  Get.back();
                },
              ),
              ListTile(
                leading: const Icon(Icons.history),
                title: const Text('Feat'),
                onTap: () {
                  controller.changePage(1);
                  Get.back();
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  controller.changePage(2);
                  Get.back();
                },
              ),
            ],
          ),
        ),
        body: controller.listPages[controller.selectedIndex.value],
      ),
    );
  }
}