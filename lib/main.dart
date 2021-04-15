import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      'questionText': 'Dart first appeared in which year?',
      'answers': [
        {'text': '2001', 'score': 0},
        {'text': '2011', 'score': 10},
        {'text': '2009', 'score': 0},
        {'text': '1999', 'score': 0},
      ]
    },
    {
      'questionText': 'Flutter is created by',
      'answers': [
        {'text': 'Apple', 'score': 0},
        {'text': 'Facebook', 'score': 0},
        {'text': 'Google', 'score': 10},
        {'text': 'Microsoft', 'score': 0},
      ]
    },
    {
      'questionText': 'Flutter is created by',
      'answers': [
        {'text': 'Apple', 'score': 0},
        {'text': 'Facebook', 'score': 0},
        {'text': 'Google', 'score': 10},
        {'text': 'Microsoft', 'score': 0},
      ]
    },
  ];

  @override
  build(BuildContext context) {
    void _answerQuestion(int score) {
      _totalScore += score;

      setState(() {
        _questionIndex = _questionIndex + 1;

        print(_questionIndex);
        if (_questionIndex < _questions.length) {
          print('We have more questions');
        }
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
