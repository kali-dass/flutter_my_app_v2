import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = '';
    if (resultScore > 15) {
      resultText = 'That is awesome.';
    } else if (resultScore > 10) {
      resultText = 'That is cool. ';
    } else {
      resultText = 'Can make better choice. ';
    }
    return resultText + "Your score is " + resultScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
