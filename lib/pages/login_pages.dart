import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:ujian/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              const SizedBox(height: 10),

              TextField(
                controller: controller.txtUsername,
                decoration: const InputDecoration(hintText: 'Enter your email'),
              ),
              const SizedBox(height: 24),

              TextField(
                controller: controller.txtPassword,
                obscureText:
                    true, // Opsional: untuk menyembunyikan karakter password
                decoration: const InputDecoration(
                  hintText: 'Enter your password',
                ),
              ),
              const SizedBox(height: 24),

              Obx(
                () => controller.isLoading.value
                    ? Center(child: CircularProgressIndicator())
                    : OutlinedButton(
                        onPressed: () {
                          controller.login();
                        },
                        child: Text('Log in'),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
