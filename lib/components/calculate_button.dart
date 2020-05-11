import 'package:flutter/material.dart';
import '../constant.dart';

class CalculateButton extends StatelessWidget {
 final String text;
 final Function onTap;

 CalculateButton({@required this.text, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 10.0),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            text,
            style: KLargeButtonText,
          ),
        ),
      ),
    );
  }
}