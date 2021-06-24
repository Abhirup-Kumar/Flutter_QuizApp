import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function
      answerQuestion; // or just final answerQuestin also works//used voidcallback type instead of Function type since Answer(answeQues,answ) throws err - > The argument type 'Function' can't be assigned to the parameter type 'void Function()?'
  final int questionIndex;
  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  }); //required replaces @required in 2.2 version.

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Text(questions[_questionIndex]),
        Question(
          questions[questionIndex]['questionText']
              as String, //doing as String, because dart doesnt know this shit is string.
        ),

        ...(questions[questionIndex]['answers'] as List<
                Map<String,
                    Object>>) //doing as List<> because dart doesnt know we are referring to listofstrings, we know so we telling him
            .map((answer) {
          return Answer(
              () => answerQuestion(
                  answer['score']), //() => answerQuestion(answer['score']),
              answer['text']
                  .toString()); //cant pass just answerQues anymore as this passes wothout argument which we need to pass, onPressed also executes withour argu if we just pass fun pointer
        }).toList() //map requires a function to execute on this list, dart requires function in () in map, which is executed on all elements in list

        // Answer(_answerQuestion),
        // Answer(_answerQuestion),

        // Answer(_answerQuestion),

        // ElevatedButton(
        //   onPressed: _answerQuestion,
        //   child: Text('Answer 1'),
        // ),
        // ElevatedButton(
        //   onPressed: () => print("Answer 2 Chosen"),
        //   child: Text('Answer 2'),
        // ),
        // ElevatedButton(
        //   onPressed: () {
        //     print("Answer 3 chosen");
        //   },
        //   child: Text('Answer 3'),
        // ),
      ],
    );
  }
}
