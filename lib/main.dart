import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// or

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
 
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('First of Many'),
          ),
          body: Column(
            children: [
              Text(
                questions[questionIndex],
              ),
              RaisedButton(
                child: Text('Answer1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer2'),
                onPressed: () => print('Answer 2 chosen'),
              ),
              RaisedButton(
                child: Text('Answer3'),
                onPressed: () {
                  print('Answer 3 chosen');
                },
              ),
            ],
          )),
    );
  }
}
