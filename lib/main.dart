import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ujian/routes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My Learning App",
      initialRoute: Routes.loginPage,
      getPages: Routes.myPages,
    );
  }
}