import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Constants.dart';

class IconContents extends StatelessWidget {
  IconContents({this.gender = 'Male', this.genderIcon = FontAwesomeIcons.mars});

  final String gender;
  final IconData genderIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(genderIcon, size: kIconSize,),
        SizedBox(height: kBoxSize,),
        Text(gender, style: kLabelTextStyle),
      ],
    );
  }
}