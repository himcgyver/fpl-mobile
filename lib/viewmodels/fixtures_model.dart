import 'package:flutter/cupertino.dart';
import 'package:fpl_mobile/locator.dart';
import 'package:fpl_mobile/models/fixtures.dart';
import 'package:fpl_mobile/services/api.dart';

class FixturesViewModel extends ChangeNotifier {
  Api _api = locator<Api>();

  Future<List<Fixture>> getFixtures(int event) async {
    FixtureList fixtures = await _api.getFixtureData(event);
    return fixtures.fixtures;
  }
}
