import 'package:flutter/cupertino.dart';

class CorrectAnswer {
  Question questions;
  String firstAns;
  String secondAns;
  String thirdAns;

  String fourthAnsAns;
  int answer;

  CorrectAnswer(
      {required this.questions,
      required this.firstAns,
      required this.secondAns,
      required this.thirdAns,
      required this.fourthAnsAns,
      required this.answer});
  @override
  String toString() {
    return "CorrectAnswer {question: $questions,firstAns: $firstAns, secondAns: $secondAns, thirdAns: $thirdAns}"; //, fourthAns: $fourthAnsAns
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CorrectAnswer &&
          runtimeType == other.runtimeType &&
          other.questions == other.questions;
}

class Question {
  final Operand firstOperand;
  final String firstOperator;

  final Operand secondOperand;

  final String? secondOperator;

  final Operand? thirdOperand;

  final int answer;

  Question({
    required this.firstOperand,
    required this.firstOperator,
    required this.secondOperand,
    required this.secondOperator,
    required this.thirdOperand,
    required this.answer,
  });
}

class Operand {
  final String value;
  final bool isQuestionMark;

  Operand({required this.value, required this.isQuestionMark});
}
