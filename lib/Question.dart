
import 'package:flutter/material.dart';
class Question extends StatelessWidget {
  final String questionstext;
  Question(this.questionstext);


  @override
  Widget build(BuildContext context) {
    return Container( 
      margin: EdgeInsets.all(20),
      width: double.infinity,
      child: Text(questionstext, 
      style: TextStyle(fontSize: 30),
     textAlign: TextAlign.center,) ,
    );
  }
}
