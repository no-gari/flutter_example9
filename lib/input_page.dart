import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContents.dart';
import 'Reusable_Card.dart';

const double bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color malecardColour = inactiveCardColor;
  Color femalecardColour = inactiveCardColor;

  void updateColour (int gender) {
    if (gender == 1) {
      malecardColour = activeCardColor;
      femalecardColour = inactiveCardColor;
    } else {
      malecardColour = inactiveCardColor;
      femalecardColour = activeCardColor;
    }
  }

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
                              updateColour(1);
                            });
                          },
                          child: Reusable(
                            colour: malecardColour,
                            cardChild: IconContents(),
                            ),
                        ),
                        ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            updateColour(2);
                          });
                        },
                        child: Reusable(
                          colour: femalecardColour,
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
