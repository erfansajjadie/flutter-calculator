import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/constants/colors.dart';
import 'package:flutter_calculator/widgets/number_button.dart';
import 'package:flutter_calculator/widgets/operator_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;


    return Scaffold(
      body: Container(
        height: height,
        child : Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: height * 0.3,
              child: Center(
                child: Text(
                  "30%",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OperatorButton(text: "C",),
                OperatorButton(text: "Del",),
                OperatorButton(icon: FontAwesomeIcons.percentage),
                OperatorButton(icon: FontAwesomeIcons.divide,),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberButton(number: "7",),
                NumberButton(number: "8",),
                NumberButton(number: "9",),
                OperatorButton(icon: FontAwesomeIcons.times,),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberButton(number: "4",),
                NumberButton(number: "5",),
                NumberButton(number: "6",),
                OperatorButton(icon: FontAwesomeIcons.plus,),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberButton(number: "1",),
                NumberButton(number: "2",),
                NumberButton(number: "3",),
                OperatorButton(icon: FontAwesomeIcons.minus,),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberButton(number: "0", isDouble: true,),
                NumberButton(number: ".",),
                OperatorButton(icon: FontAwesomeIcons.equals, color: kDarkOrange,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
