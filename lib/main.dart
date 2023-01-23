import 'package:flutter/material.dart';

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

  static const _questions = [
    {
      'questionText': 'What Beverage would you like?',
      'answers': ['Coffee', 'Tea', 'Carbonated Drink', 'Water']
    },
    {
      'questionText': 'What laptop would you like?',
      'answers': ['Dell', 'Mac', 'Custom', 'HP']
    }
  ];

  void _answerToQuestions() {
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
            : Center(
                child: Text(
                  'Well done',
                  style: TextStyle(fontSize: 20),
                ),
              ),
      ),
    );
  }
}
