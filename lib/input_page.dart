import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContents.dart';
import 'Reusable_Card.dart';

const double bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

enum Gender {
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:
      Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          },
                          child: Reusable(
                            colour: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                            cardChild: IconContents(),
                            ),
                        ),
                        ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        child: Reusable(
                          colour: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                          cardChild: IconContents(gender: 'Female', genderIcon: FontAwesomeIcons.venus,),
                          ),
                      ),
                    ),
                ],
              ),
            ),
            Expanded(
              child: Reusable(colour: activeCardColor,),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Reusable(colour: activeCardColor,),
                  ),
                  Expanded(
                    child: Reusable(colour: activeCardColor,),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: bottomContainerHeight,
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
            ),
          ]
        ),
    );
  }
}
