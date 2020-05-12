// import 'package:fpl_mobile/services/endpoint_caller.dart';
import 'package:fpl_mobile/model/bootstrap.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  static const baseUrl = 'https://fantasy.premierleague.com/api';

  Future<BootstrapData> getBootstrapData() async {
    var response = await http.get('$baseUrl/bootstrap-static/');
    return BootstrapData.fromJson(json.decode(response.body));
  }

  // Future<List<dynamic>> getFixturesData(int event) async {
  //   var response = http.get('$baseUrl/fixtures/?event=$event');
  //   return fixturesData;
  // }

  // Map<String, dynamic> getCurrentGwData(dynamic gameweekData) {
  //   for (var fixture in gameweekData) {
  //     if (fixture['is_current'] == true) {
  //       fixture['deadline_time'] = Helper.formatDate(fixture['deadline_time']);
  //       return fixture;
  //     }
  //   }
  // }

  // List<List<String>> mapFixtureToTeam(dynamic fixtures, dynamic teams) {
  //   List<List<String>> fixturesList = List<List<String>>();
  //   for (var fixture in fixtures) {
  //     List<String> teamPair = [];
  //     for (var team in teams) {
  //       if (fixture['team_h'] == team['id']) {
  //         teamPair.length == 0
  //             ? teamPair.add(team['name'])
  //             : teamPair.insert(0, team['name']);
  //       } else if (fixture['team_a'] == team['id']) {
  //         teamPair.add(team['name']);
  //       }
  //       if (teamPair.length == 2) break;
  //     }
  //     fixturesList.add(teamPair);
  //   }
  //   return fixturesList;
  // }
}
