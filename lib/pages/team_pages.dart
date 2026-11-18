import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ujian/controller/team_controller.dart';
import 'package:ujian/routes.dart'; 

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TeamController controller = Get.put(TeamController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Tim'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => controller.fetchTeams(),
          ),
        ],
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.errorMessage.isNotEmpty) {
          return Center(
            child: Text(
              controller.errorMessage.value,
              style: const TextStyle(color: Colors.red),
            ),
          );
        }

        if (controller.teamList.isEmpty) {
          return const Center(child: Text('Tidak ada data tim.'));
        }

        return ListView.builder(
          itemCount: controller.teamList.length,
          itemBuilder: (context, index) {
            final team = controller.teamList[index];
            return ListTile(
              leading: team.strBadge != null && team.strBadge!.isNotEmpty
                  ? Image.network(
                      team.strBadge!,
                      width: 50,
                      height: 50,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.shield, size: 40),
                    )
                  : const Icon(Icons.shield, size: 40),
              title: Text(
                team.strTeam ?? 'Unknown Team',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(team.strSport ?? 'No Sport'),
              
              // Tambahkan event onTap di sini
              onTap: () {
                Get.toNamed(Routes.detailTeamPage, arguments: team);
              },
            );
          },
        );
      }),
    );
  }
}