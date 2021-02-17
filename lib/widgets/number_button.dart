import 'package:flutter/material.dart';
import 'package:flutter_calculator/constants/colors.dart';

class NumberButton extends StatelessWidget {

  final String number;
  final bool isDouble;

  const NumberButton({Key key, this.number, this.isDouble = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width - 70;
    var bWidth = (width / 4);

    return MaterialButton(
      onPressed: () {},
      padding: EdgeInsets.zero,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      height: bWidth,
      minWidth: isDouble ? (bWidth * 2) + (70 / 5) : bWidth,
      elevation: 0,
      color: Colors.grey.shade300,
      child: Center(
        child: Text(number , style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w700),),
      ),
    );
  }
}
