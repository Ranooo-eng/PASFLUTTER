import 'package:get/get.dart';
import 'package:ujian/pages/login_pages.dart';
import 'package:ujian/pages/listMakanan_pages.dart';
import 'package:ujian/pages/detailMakanan_pages.dart';
import 'package:ujian/pages/menuDrawer_pages.dart';
import 'package:ujian/pages/mainMenu_pages.dart';
import 'package:ujian/pages/team_pages.dart';
import 'package:ujian/pages/detailTeam_pages.dart';

class Routes {
  static const String loginPage = "/login";
  static const String listMakananPage = "/listMakanan";
  static const String detailMakananPage = "/detailMakanan";
  static const String menuDrawer = "/menuDrawer";
  static const String mainMenuPage = "/mainMenu";
  static const String teamPage = "/team";
  static const String detailTeamPage = "/detailTeam";

  static final myPages = [
    GetPage(name: '/login', page: () => LoginPage()),
    GetPage(name: '/listMakanan', page: () => ListMakananPage()),
    GetPage(name: '/detailMakanan', page: () => DetailMakananPage()),
    GetPage(name: '/menuDrawer', page: () => menuDrawerPage()),
    GetPage(name: '/mainMenu', page: () => MainmenuPage()),
    GetPage(name: '/team', page: () => TeamPage()),
    GetPage(name: '/detailTeam', page: () => DetailTeamPage()),
  ];
}