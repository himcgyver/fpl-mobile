import 'package:fpl_mobile/services/endpoint_caller.dart';
import 'package:intl/intl.dart';
import 'package:fpl_mobile/utilities/helper.dart';

const bootstrapUrl = "https://fantasy.premierleague.com/api/bootstrap-static/";
const fixturesUrl = "https://fantasy.premierleague.com/api/fixtures/?event=";

class DataGetter {
  Future<dynamic> getBootstrapData() async {
    EndpointCaller bootstrapCall = EndpointCaller(bootstrapUrl);
    var bootstrapData = await bootstrapCall.getData();
    return bootstrapData;
  }

  Map<String, dynamic> getCurrentGwData(dynamic gameweekData) {
    for (var fixture in gameweekData) {
      fixture['deadline_time'] = Helper.formatDate(fixture['deadline_time']);
      if (fixture['is_current'] == true) {
        return fixture;
      }
    }
  }

  Future<List<dynamic>> getFixturesData(int event) async {
    EndpointCaller fixturesCall = EndpointCaller('$fixturesUrl$event');
    var fixturesData = await fixturesCall.getData();
    return fixturesData;
  }

  List<List<String>> mapFixtureToTeam(dynamic fixtures, dynamic teams) {
    List<List<String>> fixturesList = List<List<String>>();

    for (var fixture in fixtures) {
      List<String> teamPair = [];
      for (var team in teams) {
        if (fixture['team_h'] == team['id']) {
          teamPair.length == 0
              ? teamPair.add(team['name'])
              : teamPair.insert(0, team['name']);
        } else if (fixture['team_a'] == team['id']) {
          teamPair.add(team['name']);
        }
        if (teamPair.length == 2) break;
      }
      fixturesList.add(teamPair);
    }
    return fixturesList;
  }
}
