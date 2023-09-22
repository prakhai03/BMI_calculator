import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import 'input_page.dart';
import '../components/bottomButton.dart';

class resultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const resultsPage({super.key, required this.bmiResult, required this.resultText, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),),
      body: Column(
        children: [
          Expanded(child: Container(
            child: Text(
              'Your Result',
              style: kTitleStyle,
            ),
          )),
          Expanded(
            flex: 5,

              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(resultText.toUpperCase(), style: kResultTextStyle,textAlign: TextAlign.center),
                    Text(bmiResult, style: kBMITextStyle, textAlign: TextAlign.center ),
                    Text(interpretation, style: kBodyTextStyle, textAlign: TextAlign.center,),
                    BottomButton( buttonTitle:'RE-CALCULATE BMI', ontap: (){
                      Navigator.pop(context);
                    })

                  ],
                ),
              ))
        ],
      ),

    );

  }
}
