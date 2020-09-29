import 'package:flutter/cupertino.dart';
import 'package:fpl_mobile/locator.dart';
import 'package:fpl_mobile/utilities/helper.dart';
import 'package:fpl_mobile/models/bootstrap-static/event.dart';
import 'package:fpl_mobile/services/static_main_data.dart';

class MenuViewModel extends ChangeNotifier {
  final SharedMainData _mainData = locator<SharedMainData>();

  Event get currentGw => _mainData.currentGw;

  // Future getGw() {
  //   _mainData.currentGw;
  // }
  // int get gameweekId {
  //   return currentGameweek.id;
  // }

  // String get deadline {
  //   return Helper.formatDate(currentGameweek.deadlineTime).substring(0, 16);
  // }
}
