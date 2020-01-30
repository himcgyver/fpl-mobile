import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fpl_mobile/screens/main_screen.dart';
import 'package:fpl_mobile/services/data_getter.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getData() async {
    DataGetter footballData = DataGetter();
    final bootstrapData = await footballData.getBootstrapData();
    final Map currentGwData =
        footballData.getCurrentGwData(bootstrapData["events"]);
    final dynamic fixtures =
        await footballData.getFixturesData(currentGwData["id"]);
    final List<List<String>> teamPairList = footballData.mapFixtureToTeam(
      fixtures,
      bootstrapData["teams"],
    );
    print(teamPairList);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MainScreen(
          bootstrapData: bootstrapData,
          currentGwData: currentGwData,
          teamPairList: teamPairList,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpinKitFadingCircle(
        color: Color(0xFF37003D),
        size: 50.0,
      ),
    );
  }
}
