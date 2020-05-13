import 'package:flutter/material.dart';
import 'package:fpl_mobile/components/gameweek_text.dart';

class FlatNavigationButton extends StatelessWidget {
  FlatNavigationButton({this.icon, this.navigate, this.text});
  final IconData icon;
  final String text;
  final Widget navigate;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 4.0),
      child: RawMaterialButton(
        fillColor: Color(0xFFf6f4e6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.0),
        ),
        child: ListTile(
          leading: Icon(icon, size: 30.0, color: Colors.black),
          trailing: Icon(Icons.arrow_forward),
          title: GameweekText(text: text, fontSize: 13.0),
        ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => navigate),
        ),
      ),
    );
  }
}
