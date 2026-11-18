import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ujian/controller/drawer_controller.dart';
import 'package:ujian/controller/mainMenu_controller.dart';

class menuDrawerPage extends StatelessWidget {
  menuDrawerPage({super.key});

  final drawerController = Get.put(menuDrawerController());
  final mainController = Get.find<MainMenuController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Main Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              selected: mainController.selectedIndex.value == 0,
              onTap: () {
                drawerController.changePage(0);
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.featured_play_list_outlined),
              title: const Text('Feat'),
              selected: mainController.selectedIndex.value == 1,
              onTap: () {
                drawerController.changePage(1);
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text('Profile'),
              selected: mainController.selectedIndex.value == 2,
              onTap: () {
                drawerController.changePage(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}