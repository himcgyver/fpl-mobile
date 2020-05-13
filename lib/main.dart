import 'package:flutter/material.dart';
import 'package:fpl_mobile/locator.dart';
import 'package:provider/provider.dart';
import 'package:fpl_mobile/screens/loading_screen.dart';
import 'package:fpl_mobile/viewmodels/menu_model.dart';
import 'package:fpl_mobile/viewmodels/fixtures_model.dart';

void main() {
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MenuModel>(
            create: (context) => locator<MenuModel>()),
        ChangeNotifierProvider<FixturesModel>(
            create: (context) => locator<FixturesModel>()),
      ],
      child: MaterialApp(
        home: LoadingScreenView(),
      ),
    );
  }
}
