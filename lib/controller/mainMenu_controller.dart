import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ujian/menu/feat.dart';
import 'package:ujian/menu/home.dart';
import 'package:ujian/menu/profile.dart';

class MainMenuController extends GetxController{
  final RxInt selectedIndex = 0.obs;

  void changePage (int index){
    selectedIndex.value = index;
  }
  List<Widget> listpages = [HomePage(), FeatPage(), ProfilePage()];
}