import 'package:flutter/material.dart';
import 'package:flutter_my_app_v2/results.dart';

import './quiz.dart';

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
  var _totalScore = 0;

  static const _questions = [
    {
      'questionText': 'What Beverage would you like?',
      'answers': [
        {'text': 'Coffee', 'score': 5},
        {'text': 'Tea', 'score': 4},
        {'text': 'Carbonated Drink', 'score': 1},
        {'text': 'Water', 'score': 10}
      ]
    },
    {
      'questionText': 'What laptop would you like?',
      'answers': [
        {'text': 'Dell', 'score': 1},
        {'text': 'Mac', 'score': 9},
        {'text': 'Custom', 'score': 8},
        {'text': 'HP', 'score': 2}
      ]
    }
  ];

  void _answerToQuestions(int score) {
    _totalScore += score;
    print(_totalScore as int);
    if (_questionIndiex < _questions.length) {
      print('More Questions Left');
    }
    setState(() {
      _questionIndiex = _questionIndiex + 1;
    });
    print(_questionIndiex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App with Scaffold'),
        ),
        body: _questionIndiex < _questions.length
            ? Quiz(
                answerQuestions: _answerToQuestions,
                questions: _questions,
                questionIndex: _questionIndiex)
            : Result(_totalScore),
      ),
    );
  }
}
