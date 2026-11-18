import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ujian/pages/menuDrawer_pages.dart';
import 'package:ujian/controller/mainMenu_controller.dart';

class MainmenuPage extends StatelessWidget {
  MainmenuPage({super.key});

  final MainMenucontroller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text('Main Menu'),
        ),

        body: IndexedStack(
          index: MainMenucontroller.selectedIndex.value,
          children: MainMenucontroller.listpages,
        ),

        drawer: menuDrawerPage(),

        bottomNavigationBar: BottomNavigationBar(
          onTap: MainMenucontroller.changePage,
          currentIndex: MainMenucontroller.selectedIndex.value,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.featured_play_list),
              label: 'Feat',
              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}