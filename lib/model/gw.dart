// import 'package:fpl_mobile/model/gameRepository.dart';
// import 'package:fpl_mobile/model/gameData.dart';

// class GameWeek extends BootstrapResponse {
//   Map gameweekData;
//   List<Map> allGameweeks;

//   GameWeek() {
//     _gameweekData = {};
//     allGameweeks = [];
//   }

//   Future<Map<String, dynamic>> getAllGameweeks() async {
//     BootstrapData allGameweeks = await getAllData();
//     return allGameweeks['events'];
//   }

//   Future<Map<String, dynamic>> getCurrentGwData() async {
//     var gameweeks = await getAllData();
//     if (!_cacheExpired && _gameweekData == null)
//       for (var fixture in _allData.events) {
//         if (fixture['is_current'] == true) {
//           fixture['deadline_time'] =
//               Helper.formatDate(fixture['deadline_time']);
//           _gameweekData = fixture;
//         }
//       }
//     }
//     return _gameweekData;
//   }
// }
