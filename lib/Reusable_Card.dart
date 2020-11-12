import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  Reusable({this.colour = const Color(0xFF1D1E33), this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),)
    );
  }
}

