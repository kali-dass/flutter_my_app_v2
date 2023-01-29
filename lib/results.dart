import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

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
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(
            onPressed: resetQuiz,
            child: Text('Restart Quiz!'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red[500]),
            )),
        TextButton(
          onPressed: resetQuiz,
          child: Text('Restart Quiz!'),
          style:
              //TextButton.styleFrom(primary: Colors.orange)
              ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.orange)),
        ),
        OutlinedButton(
          onPressed: resetQuiz,
          child: Text('Reset the Quiz!!'),
          style:
              //OutlinedButton.styleFrom(primary: Colors.orange)
              ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  foregroundColor: MaterialStateProperty.all(Colors.white)),
        )
      ],
    );
  }
}
