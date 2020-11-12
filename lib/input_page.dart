import 'package:flutter/material.dart';

const double bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                      child: Reusable(),
                    ),
                    Expanded(
                      child: Reusable(),
                    ),
                ],
              ),
            ),
            Expanded(
              child: Reusable(),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Reusable(),
                  ),
                  Expanded(
                    child: Reusable(),
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

class Reusable extends StatelessWidget {
  Reusable({this.colour = const Color(0xFF1D1E33)});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),)
    );
  }
}

