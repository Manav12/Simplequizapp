import 'package:flutter/material.dart';
import 'package:quiz_application/Question.dart';
import 'package:quiz_application/Quiz.dart';
import './answer.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
 final  question = const [
      {
        'question':
            'Runs scored by batsman in 5 one day matches are 50, 70, 82, 93, and 20. The standard deviation is ______',
        'answer': [ 

          {'text': '25.79', 'Score': 1},
          {'text': '25.49', 'Score': 1},
          {'text': '25.29', 'Score': 1},
          {'text': '25.59', 'Score': 1},]
      },
       
      {
        'question':
            'Find median and mode of the messages received on 9 consecutive days 15, 11, 9, 5, 18, 4, 15, 13, 17.',
        'answer': [
           {'text': '13 6', 'Score': 1},
          {'text': '13 18', 'Score': 1},
          {'text': '18 15', 'Score': 1},
          {'text': '15 16', 'Score': 1},
        ]
         
      },
      {
        'question':
            ' A coin is tossed up 4 times. The probability that tails turn up in 3 cases is ______',
        'answer': [
            {'text': '1/2', 'Score': 0},
          {'text': ' 1/3', 'Score': 0},
          {'text': '1/4', 'Score': 1},
          {'text': '1/6', 'Score':0 },
          
          ]
      },
      
    ];
     var count = 0;
     int  totalscore = 0;
  void questionfunction( int score) {

    totalscore = totalscore - score;
    setState(() {
      count = count + 1;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
          ),
          body:  count < question.length ?  Quiz(question, questionfunction, count,) : Result(totalscore),
          ),
    );
  }
}
