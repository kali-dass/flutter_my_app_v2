import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerToQuestions() {
    print('Answer Choosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App with Scaffold'),
        ),
        body: Column(
          children: [
            Text('The Beverage would you like to have?'),
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
