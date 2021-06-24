import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler,
      this.answerText); //since we passing function, so function type variable accepting it.

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //width: MediaQuery.of(context).size.width * 0.9,
      padding: EdgeInsets.all(5.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          textStyle: TextStyle(
            color: Colors.deepOrangeAccent,
          ),
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
