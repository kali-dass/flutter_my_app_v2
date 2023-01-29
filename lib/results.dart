import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Well done',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
