import 'dart:convert';

ListteamModel listteamModelFromJson(String str) => ListteamModel.fromJson(json.decode(str));

String listteamModelToJson(ListteamModel data) => json.encode(data.toJson());

class ListteamModel {
    final List<Team> teams;

    ListteamModel({
        required this.teams,
    });

    factory ListteamModel.fromJson(Map<String, dynamic> json) => ListteamModel(
        teams: json["teams"] == null 
            ? [] 
            : List<Team>.from(json["teams"].map((x) => Team.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "teams": List<dynamic>.from(teams.map((x) => x.toJson())),
    };
}

class Team {
    final String? idTeam;
    final String? strTeam;
    final String? strBadge;
    final String? strSport;
    final String? strDescriptionEN;

    Team({
        this.idTeam,
        this.strTeam,
        this.strBadge,
        this.strSport,
        this.strDescriptionEN,
    });

    factory Team.fromJson(Map<String, dynamic> json) => Team(
        idTeam: json["idTeam"],
        strTeam: json["strTeam"],
        strBadge: json["strBadge"],
        strSport: json["strSport"],
        strDescriptionEN: json["strDescriptionEN"],
    );

    Map<String, dynamic> toJson() => {
        "idTeam": idTeam,
        "strTeam": strTeam,
        "strBadge": strBadge,
        "strSport": strSport,
        "strDescriptionEN": strDescriptionEN,
    };
}