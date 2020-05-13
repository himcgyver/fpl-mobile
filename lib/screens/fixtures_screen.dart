import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fpl_mobile/model/fixtures.dart';
import 'package:fpl_mobile/viewmodels/fixtures_model.dart';

class FixturesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var fixturesData = Provider.of<FixturesModel>(context, listen: false);

    return Scaffold(
      body: FutureBuilder(
        future: fixturesData.getFixtures(2),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none &&
              snapshot.hasData == null) {
            return Container();
          }
          List<Fixture> fixtures = snapshot.data ?? [];
          // CircularProgressIndicator()
          return ListView.builder(
            itemCount: fixtures.length,
            itemBuilder: (context, index) {
              Fixture fixture = fixtures[index];
              return ListTile(
                title: Text('${fixture.teamA} - ${fixture.teamH}'),
              );
            },
          );
        },
      ),
    );
  }
}
