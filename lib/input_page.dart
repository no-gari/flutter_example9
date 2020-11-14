import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContents.dart';
import 'Reusable_Card.dart';
import 'Constants.dart';
import 'results_page.dart';
import 'bottom_button.dart';
import 'round_icon_button.dart';

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
  int height = 180;
  int weight = 60;
  int age = 25;

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
                        child: Reusable(
                          onPressed: () {
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          },
                          colour: selectedGender == Gender.male ? kActiveCardColor : kInactiveCardColor,
                          cardChild: IconContents(),
                          ),
                        ),
                    Expanded(
                      child: Reusable(
                        onPressed: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        colour: selectedGender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                        cardChild: IconContents(gender: 'Female', genderIcon: FontAwesomeIcons.venus,),
                        ),
                    ),
                ],
              ),
            ),
            Expanded(
              child: Reusable(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('HEIGHT', style: kLabelTextStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Text(height.toString(), style: kSliderTextStyle),
                        Text('cm', style: kLabelTextStyle,),
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                          trackHeight: 1, thumbColor: Color(0xFFEB1555), overlayColor: Color(0x15EB1555),
                      activeTrackColor: Colors.white, inactiveTrackColor: Colors.grey,),
                      child: Slider(
                          value: height.toDouble() ,
                          min: 120.0, max: 220.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.toInt();
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Reusable(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('WEIGT', style: kLabelTextStyle,),
                          Text(weight.toString(), style: kSliderTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(buttonIcon: Icon(FontAwesomeIcons.minus),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                              }),
                              SizedBox(width: 10.0,),
                              RoundIconButton(buttonIcon: Icon(FontAwesomeIcons.plus),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Reusable(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('AGE', style: kLabelTextStyle,),
                          Text(age.toString(), style: kSliderTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(buttonIcon: Icon(FontAwesomeIcons.minus),
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  }),
                              SizedBox(width: 10.0,),
                              RoundIconButton(buttonIcon: Icon(FontAwesomeIcons.plus),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage()));
              },
              buttonTitle: 'CALCULATE',
            ),
          ]
        ),
    );
  }
}
