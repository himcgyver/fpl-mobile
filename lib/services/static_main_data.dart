import 'package:fpl_mobile/locator.dart';
import 'package:fpl_mobile/services/api.dart';
import 'package:fpl_mobile/models/bootstrap-static/bootstrap.dart';
import 'package:fpl_mobile/models/bootstrap-static/event.dart';
import 'package:fpl_mobile/models/bootstrap-static/team.dart';
import 'package:fpl_mobile/models/bootstrap-static/phase.dart';
import 'package:fpl_mobile/models/bootstrap-static/element.dart';
import 'package:fpl_mobile/models/bootstrap-static/element_type.dart';

class SharedMainData {
  final Api _api = locator<Api>();
  BootstrapData _allData;
  Event _currentGameweek;

  List<Event> get events => _allData.events;

  List<Team> get teams => _allData.teams;

  List<Phase> get phases => _allData.phases;

  List<Element> get elements => _allData.elements;

  List<ElementType> get elementTypes => _allData.elementTypes;

  Event get currentGw => _currentGameweek;

  Future<Event> getCurrentGw() async {
    for (var event in _allData.events) {
      if (event.isCurrent == true) return event;
    }
  }

  Future<void> getData() async {
    _allData = await _api.getBootstrapData();
    _currentGameweek = await getCurrentGw();
    print('curentgamweweek $_currentGameweek');
  }
}
