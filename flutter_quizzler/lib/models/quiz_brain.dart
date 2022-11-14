
import 'package:flutter/material.dart';
import 'package:flutter_quizzler/models/question.dart';

class QuizBrain with ChangeNotifier{
  int _questionNumber = 0;

 final List<Question> _question = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
  ];


  String get getQuestion{
  return  _question[_questionNumber].questionText;
  }

  bool get getQuestionAnswer{
    return _question[_questionNumber].questionAnswer;
  }

  void increamentQuestionNumber(){
    _questionNumber++;
    if(_questionNumber > _question.length-1){
      _questionNumber = 0;
    }
    notifyListeners();
  }

}