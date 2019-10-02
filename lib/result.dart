import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'You are awesome!!';
    } else if (resultScore <= 16) {
      resultText = 'You\'re alright';
    } else if (resultScore <= 20) {
      resultText = 'Weirdo';
    } else {
      resultText = 'You should be ashamed of yourself';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart Quiz!'),
          textColor: Colors.deepPurpleAccent,
          onPressed: resetHandler,
        ),
      ]),
    );
  }
}
