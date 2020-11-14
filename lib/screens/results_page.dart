import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constants.dart';
import '../components/Reusable_Card.dart';

class ResultsPage extends StatelessWidget {
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
                  Text('Normal', style: kResultTextStyle,),
                  Text('18.3', style: kBMITextStyle,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
                    child: Text('Your BMI Result is  quite low, you should eat more!',
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
