import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constants.dart';
import '../components/Reusable_Card.dart';
import 'package:bmi_calculator/calculator_ brain.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult, @required this.interpretation, @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                child: Text('Your Results',
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
                ),),),
          Expanded(
            flex: 5,
            child: Reusable(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText, style: kResultTextStyle,),
                  Text(bmiResult, style: kBMITextStyle,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
                    child: Text(interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyText,),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CAULCULATE')
        ],
      ),
    );
  }
}
