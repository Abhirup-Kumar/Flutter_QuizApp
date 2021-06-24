import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    //it is a getter , doesnt neet () at end and called as a property that is without () and not a member
    String resultText;
    if (resultScore <= 8)
      resultText = "You are awsome and innocent!!";
    else if (resultScore <= 12)
      resultText = "Pretty likeable!!";
    else if (resultScore <= 16)
      resultText = "You are... Strange?!";
    else
      resultText = "You are so bad!";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //width: ,
        child: Column(
          children: [
            Text(
              resultPhrase,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.amber[900],
              ),
            ),
            TextButton(onPressed: resetHandler, child: Text('Restart Quiz!')),
          ],
        ),
      ),
    );
  }
}
