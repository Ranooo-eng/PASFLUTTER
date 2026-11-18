import 'package:get/get.dart';
import 'package:ujian/controller/mainMenu_controller.dart';

class menuDrawerController extends GetxController {
  final MainMenuController mainController =
      Get.find<MainMenuController>();

  void changePage(int index) {
    mainController.changePage(index);
  }
}