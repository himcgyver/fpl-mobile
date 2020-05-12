import 'package:flutter/material.dart';
import 'package:fpl_mobile/locator.dart';
import 'package:provider/provider.dart';
import 'package:fpl_mobile/viewmodels/menu_model.dart';
import 'package:fpl_mobile/screens/loading_screen.dart';

void main() {
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MenuModel>(
      create: (context) => locator<MenuModel>(),
      child: MaterialApp(
        home: LoadingScreenView(),
      ),
    );
  }
}
