import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

// or

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = const [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Black', 'Red', 'Blue', 'Green'],
      },
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Lion', 'Rabbit', 'Snake', 'Eagle'],
      },
      {
        'questionText': 'Who\'s your favourite instructor?',
        'answers': ['Mosh', 'Max', 'Corey', 'Myself'],
      },
    ];

    //questions = []; // this does not work if questions is a const 

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Duncan\'s Android App'),
          ),
          body: Column(
            children: [
              Question(
                questions[_questionIndex]['questionText'],
              ),
              ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          )),
    );
  }
}
