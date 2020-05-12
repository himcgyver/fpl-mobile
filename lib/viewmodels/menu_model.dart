import 'package:flutter/cupertino.dart';
import 'package:fpl_mobile/locator.dart';
import 'package:fpl_mobile/model/event.dart';
import 'package:fpl_mobile/services/api.dart';
import 'package:fpl_mobile/model/bootstrap.dart';
import 'package:fpl_mobile/utilities/helper.dart';

class MenuModel extends ChangeNotifier {
  Api _api = locator<Api>();
  BootstrapData _allData;
  Event currentGameweek;

  Future<void> getData() async {
    _allData = await _api.getBootstrapData();
    currentGameweek = _currentGameweek();
  }

  Event _currentGameweek() {
    for (var event in _allData.events) {
      if (event.isCurrent == true) {
        return event;
      }
    }
  }

  int get gameweekId {
    return currentGameweek.id;
  }

  String get deadline {
    return Helper.formatDate(currentGameweek.deadlineTime).substring(0, 16);
  }
}
