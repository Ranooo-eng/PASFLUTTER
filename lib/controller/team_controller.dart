import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:ujian/models/team_model.dart';

class TeamController extends GetxController {
  var isLoading = true.obs;
  var teamList = <Team>[].obs;
  var errorMessage = ''.obs;

  @override
  void onInit() {
    fetchTeams();
    super.onInit();
  }

  Future<void> fetchTeams() async {
    try {
      isLoading(true);
      errorMessage('');

      final response = await http.get(
        Uri.parse('https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php?l=English_Premier_League'),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);

        if (responseData['teams'] != null) {
          final List<dynamic> teamsJson = responseData['teams'];
          teamList.value = teamsJson.map((e) => Team.fromJson(e)).toList();
        } else {
          teamList.clear();
        }
      } else {
        errorMessage('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      errorMessage('An error occurred: $e');
    } finally {
      isLoading(false);
    }
  }
}