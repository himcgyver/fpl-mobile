import 'package:flutter/material.dart';
import 'package:fpl_mobile/components/gameweek_text.dart';
import 'package:fpl_mobile/components/flat_navigation_button.dart';
// import 'package:fpl_mobile/components/blinking_animation.dart';
import 'package:fpl_mobile/screens/fixtures_screen.dart';
import 'package:provider/provider.dart';
import 'package:fpl_mobile/viewmodels/menu_model.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<MenuModel>(context, listen: false);
    const gwStatus = "LIVE!";
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/pitch_yellow.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IntrinsicHeight(
                child: Container(
                  margin: EdgeInsets.only(bottom: 12.0),
                  padding: EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    color: Color(0xFFf6f4e6),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GameweekText(text: 'GAMEWEEK', fontSize: 13.0),
                          Text(
                            '${data.gameweekId}',
                            style: TextStyle(fontSize: 60.0),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0, left: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[],
                          ),
                        ),
                      ),
                      // This is commemted out gwStatus for now.
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: <Widget>[
                      //     BlinkingAnimation(children: <Widget>[
                      //       Icon(Icons.notifications_active, size: 15.0),
                      //       Icon(Icons.notifications_active,
                      //           color: Colors.transparent, size: 15.0),
                      //     ]),
                      //     Text(
                      //       '$gwStatus',
                      //       style: TextStyle(fontSize: 20.0),
                      //     ),
                      //   ],
                      // ),
                      // Expanded(
                      //   child: GameweekText(text: 'Deadline: ${data.deadline}'),
                      // ),
                      // GameweekText(text: 'Status: $gwStatus'),
                      // GameweekText(text: 'Status: $gwStatus'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    FlatNavigationButton(
                      icon: Icons.group,
                      text: 'My Team',
                      // screen: MyTeamScreen(),
                    ),
                    FlatNavigationButton(
                      icon: Icons.face,
                      text: 'Players',
                      // screen: MyTeamScreen(),
                    ),
                    FlatNavigationButton(
                      icon: Icons.group,
                      text: 'Teams',
                      // screen: MyTeamScreen(),
                    ),
                    FlatNavigationButton(
                      icon: Icons.calendar_today,
                      text: 'Fixtures',
                      navigate: FixturesScreen(),
                      // screen: MyTeamScreen(),
                    ),
                    FlatNavigationButton(
                      icon: Icons.local_hospital,
                      text: 'Injuries',
                      // screen: MyTeamScreen(),
                    ),
                    FlatNavigationButton(
                      icon: Icons.calendar_today,
                      text: 'Calendar',
                      // screen: MyTeamScreen(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// class FixtureTeam {
//   FixtureTeam(this.teamHome, this.teamAway, [this.children = const <Entry>[]]);
//   final String teamHome;
//   final String teamAway;
//   final List<FixtureTeam> children;
// }

// Widget getTextWidgets(List<List<String>> itemList) {
//   return itemList
//       .map(
//         (item) => GameweekText(text: '${item[0]} : ${item[1]}'),
//       )
//       .toList();
// }
