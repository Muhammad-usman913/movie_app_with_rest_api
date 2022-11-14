import 'package:flutter/material.dart';
import 'package:flutter_quizzler/models/question.dart';
import 'package:flutter_quizzler/models/quiz_brain.dart';
import 'package:provider/provider.dart';



void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => QuizBrain(),
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey.shade900,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: QuizPage(),
            ),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatelessWidget {
  List<Icon> scoreKeeper = [];
  @override
  Widget build(BuildContext context) {
    print('is build method is called on every tap');

    final provider = Provider.of<QuizBrain>(context,listen: true);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                provider.getQuestion
                ,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                if(provider.getQuestionAnswer == true){
                  scoreKeeper.add(Icon(Icons.check,color: Colors.green,));
                }else{
                  scoreKeeper.add(Icon(Icons.close,color: Colors.red,));
                }
                provider.increamentQuestionNumber();
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                if(provider.getQuestionAnswer == false){
                  scoreKeeper.add(Icon(Icons.check,color: Colors.green,));
                }else{
                  scoreKeeper.add(Icon(Icons.close,color: Colors.red,));
                }
               provider.increamentQuestionNumber();

                //The user picked false.
              },
            ),
          ),
        ),
        //TODO: Add a Row here as your score keeper

        Row(
          children: scoreKeeper
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/