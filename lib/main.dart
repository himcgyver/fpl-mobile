import 'package:flutter/material.dart';
import 'package:fpl_mobile/locator.dart';
import 'package:provider/provider.dart';
import 'package:fpl_mobile/screens/loading_screen.dart';
import 'package:fpl_mobile/viewmodels/loading_model.dart';

void main() {
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<LoadingViewModel>(
        create: (context) => locator<LoadingViewModel>(),
        child: LoadingScreenView(),
      ),
    );
  }
}
