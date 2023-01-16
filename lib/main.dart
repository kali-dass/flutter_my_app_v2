import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App with Scaffold'),
        ),
        body: Column(
          children: [
            Text('The Question'),
            ElevatedButton(onPressed: null, child: Text('Answer1')),
            ElevatedButton(onPressed: null, child: Text('Answer2')),
          ],
        ),
      ),
    );
  }
}
