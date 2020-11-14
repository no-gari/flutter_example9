import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.buttonIcon, this.onPressed});

  final Icon buttonIcon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        elevation: 6.0,
        constraints: BoxConstraints.tightFor(
            width: 56.0,
            height: 56.0
        ),
        shape: CircleBorder(),
        child: buttonIcon,
        fillColor: Color(0xFF4C4F5E),
        onPressed: onPressed
    );
  }
}