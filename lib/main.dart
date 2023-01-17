import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndiex = 0;

  void answerToQuestions() {
    setState(() {
      questionIndiex = questionIndiex + 1;
    });
    print(questionIndiex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What Beverage would you like?',
      'What laptop would you like?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App with Scaffold'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndiex]),
            ElevatedButton(onPressed: answerToQuestions, child: Text('Coffee')),
            ElevatedButton(
                onPressed: () => print('Tea Choosen'), child: Text('Tea')),
            ElevatedButton(
                onPressed: () {
                  print('OMG this one');
                  print('Carbonated Drink');
                },
                child: Text('Carbonated Drink')),
            ElevatedButton(onPressed: answerToQuestions, child: Text('Water')),
          ],
        ),
      ),
    );
  }
}
