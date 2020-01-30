import 'package:flutter/material.dart';

class GameweekText extends StatelessWidget {
  GameweekText({this.text, this.fontSize});
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        fontFamily: 'Varela Round',
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
