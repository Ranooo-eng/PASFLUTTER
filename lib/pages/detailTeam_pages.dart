import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ujian/controller/detailTeam_controller.dart';

class DetailTeamPage extends StatelessWidget {
  DetailTeamPage({super.key});


  final controller = Get.put(DetailTeamController(Get.arguments));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Team"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(25),
        child: Card(
          elevation: 10,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  controller.team.strTeam ?? "Team Name",
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Image.network(
                  controller.team.strBadge ?? "",
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.broken_image, size: 100),
                ),
                const SizedBox(height: 10),
                Text(
                  controller.team.idTeam ?? "",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 184, 119, 35),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  controller.team.strSport ?? "",
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  controller.team.strDescriptionEN ?? "Description",
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}