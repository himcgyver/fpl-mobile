import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:fpl_mobile/screens/menu_screen.dart';
import 'package:fpl_mobile/viewmodels/menu_model.dart';

class LoadingScreenView extends StatefulWidget {
  @override
  _LoadingScreenView createState() => _LoadingScreenView();
}

class _LoadingScreenView extends State<LoadingScreenView> {
  void initiateData() async {
    await Provider.of<MenuModel>(context, listen: false).getData();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MenuScreen(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    initiateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpinKitFadingCircle(
        color: Color(0xFFf0a500),
        size: 50.0,
      ),
    );
  }
}
