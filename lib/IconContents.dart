import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double IconSize = 80.0;
const double BoxSize = 15.0;

class IconContents extends StatelessWidget {
  IconContents({this.gender = 'Male', this.genderIcon = FontAwesomeIcons.mars});

  final String gender;
  final IconData genderIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(genderIcon, size: IconSize,),
        SizedBox(height: BoxSize,),
        Text(gender, style: TextStyle(color: Color(0xFF8D8E98)), ),
      ],
    );
  }
}