import 'package:flutter/cupertino.dart';
import 'package:fpl_mobile/locator.dart';
import 'package:fpl_mobile/model/fixtures.dart';
import 'package:fpl_mobile/services/api.dart';

class FixturesModel extends ChangeNotifier {
  Api _api = locator<Api>();

  Future<List<Fixture>> getFixtures(int event) async {
    FixtureList fixtures = await _api.getFixtureData(event);
    return fixtures.fixtures;
  }
}
