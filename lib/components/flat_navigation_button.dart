import 'package:flutter/material.dart';
import 'package:fpl_mobile/components/gameweek_text.dart';

class FlatNavigationButton extends StatelessWidget {
  FlatNavigationButton({this.icon, this.onPressed, this.text, this.screen});
  final IconData icon;
  final String text;
  final Function onPressed;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 4.0),
      child: RawMaterialButton(
        fillColor: Color(0xFFf6f4e6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.0),
          // side: BorderSide(color: Color(0xFFf4eec7)),
        ),
        child: ListTile(
          leading: Icon(icon, size: 30.0, color: Colors.black),
          trailing: Icon(Icons.arrow_forward),
          // title: Text(
          //   text,
          //   style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
          // ),
          title: GameweekText(text: text, fontSize: 13.0),
        ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        ),
      ),
    );
  }
}
