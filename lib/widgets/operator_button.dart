import 'package:flutter/material.dart';
import 'package:flutter_calculator/constants/colors.dart';

class OperatorButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const OperatorButton({
    Key key,
    this.icon,
    this.text,
    this.color = kLightOrange
  }) : super(key: key);

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
      minWidth: bWidth,
      elevation: 0,
      color: color,
      child: Center(
        child: icon != null ? Icon(icon , color: Colors.brown,) :
        Text(text, style: TextStyle(color: Colors.brown, fontSize: 22 , fontWeight: FontWeight.bold),),
      ),
    );
  }
}
