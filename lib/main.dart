import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndiex = 0;

  void _answerToQuestions() {
    setState(() {
      _questionIndiex = _questionIndiex + 1;
    });
    print(_questionIndiex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What Beverage would you like?',
        'answers': ['Coffee', 'Tea', 'Carbonated Drink', 'Water']
      },
      {
        'questionText': 'What laptop would you like?',
        'answers': ['Dell', 'Mac', 'Custom', 'HP']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App with Scaffold'),
        ),
        body: Column(
          children: [
            Question(
              (questions[_questionIndiex]['questionText'] as String),
            ),
            ...(questions[_questionIndiex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerToQuestions, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
