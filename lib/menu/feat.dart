import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:ujian/pages/team_pages.dart';

class FeatPage extends StatelessWidget {
  const FeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.off(() => TeamPage());
      },
    );
  }
}
