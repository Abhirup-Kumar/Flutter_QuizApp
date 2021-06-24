import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(
      this.questionText); //another way to make a constructor, can also use conventional way of using Ques(quesTex){this.quesTex = quesTex;}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:
          EdgeInsets.all(10), //constructor only but with extra functionalities.
      child: Text(
        //when we were only returning Text(), textAlign only center the text wrt to text shown, which didnt center it
        questionText, //so we used Container to put it in it, then specified width , this width allows to have as space possible
        style:
            TextStyle(fontSize: 28), // then textAlign works wrt to container.
        textAlign: TextAlign.center, // TextAlign.center is enum value.
      ),
    );
  }
}
