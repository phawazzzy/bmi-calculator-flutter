import 'package:flutter/material.dart';
import '../constant.dart';
import '../components/resuable_card.dart';
import '../components/calculate_button.dart';

void main() => runApp(Result());

class Result extends StatelessWidget {
 Result({@required this.bmiResult, @required this.resultText, @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: KTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: KResultTextStyle,
                  ),
                  Text(bmiResult, style: KBmiTextStyle,),
                  Column(
                    children: <Widget>[
                      Text('Normal BMI range:', style: KHintTextStyle,),
                      Text('18.5 - 25 Kg/m2', style: kBodyTextStyle,),
                    ],
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: CalculateButton(text: 'RE-CALCULATE', onTap: () {
              Navigator.pop(context);
            }),
          )
        ],
      ),
    );
  }
}
