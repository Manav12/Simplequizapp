import 'package:flutter/material.dart'; 
import './Question.dart';
import './answer.dart';





 class Quiz extends StatelessWidget {
   final List<Map<String, Object>> question;
   final int count;
   final Function questionfunction;
   Quiz(this.question, this.questionfunction, this.count);
 
   @override
   Widget build(BuildContext context) {
     return  Column(
            children: [
              Question(
                question[count]['question'],
              ),
              ...(question[count]['answer'] as List<Map<String, Object>>)
              .map((answer){
                return Answer(() => questionfunction(answer['Score']), answer['text']);
            
              }).toList(),
              
            ],
     );
   }
 }