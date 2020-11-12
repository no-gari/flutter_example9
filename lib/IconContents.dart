import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class IconContents extends StatelessWidget {
  IconContents({this.gender = 'Male', this.genderIcon = FontAwesomeIcons.mars});

  final String gender;
  final IconData genderIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(genderIcon, size: 80.0,),
        SizedBox(height: 15.0,),
        Text(gender, style: TextStyle(color: Color(0xFF8D8E98)), ),
      ],
    );
  }
}