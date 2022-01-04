import 'package:flutter/material.dart';

class QuestionController {
  int _correctAns = 0;
  int copyCorrectAns = 0;

  void finalScore(
      bool? answer, BuildContext context, int totalQuestion, int noOfClick) {
    if (answer == true) {
      _correctAns = _correctAns + 1;
    }
    if (totalQuestion == noOfClick) {
      copyCorrectAns = _correctAns;
      _correctAns = 0;
    }
  }
}
