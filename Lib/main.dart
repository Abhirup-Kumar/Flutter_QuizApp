import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';
//Good practice to have only one widget per file.

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// adding underscore _ makes this class private to this file only and cannot be access from outside
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    }, //its a map, could also create using Map()
    {
      'questionText': 'What\'s you favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Panda', 'score': 3},
        {'text': 'Koala', 'score': 0},
        {'text': 'Snake', 'score': 8},
      ],
    },
    {
      'questionText': 'Wanna hang sometimes?',
      'answers': [
        {'text': 'yes', 'score': 7},
        {'text': 'I need to take a raincheck on that!!', 'score': 2},
      ],
    },
  ];

  // const dummy = ['Hello'];
  // dummy.add('Max'); possible
  // print(dummy);
  // dummy = []; not possible

  //var dummy = const ['Hello'];
  // dummy.add('Max'); not possible
  // print(dummy);
  // dummy = []; possible

  var _questionIndex = 0;
  var _totalScore = 0;

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length)
      print("We have more");
    else
      print("No more");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion:
                    _answerQuestion, //doing  () => _answerQuestion causes answerQuestion not found error
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore,
                _restartQuiz), //we are passing these func as we do not import main file to other files and these are private to this file only.
      ),
    );
  }
}
