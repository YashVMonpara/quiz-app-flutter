import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhase {
    var resultText = 'You did it!!';

    if (resultScore == 30) {
      resultText = 'Exellent!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Text(resultPhase),
          ),
          FlatButton(onPressed: resetQuiz, child: Text('Restert Quiz')),
        ],
      ),
    );
  }
}
