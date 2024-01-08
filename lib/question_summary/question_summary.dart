import 'package:flutter/material.dart';
import 'package:quizz_app/question_summary/question_indentifier.dart';
import 'package:quizz_app/question_summary/question_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map((data) => Column(
                    children: [
                      Row(
                        children: [
                          QuestionIdentifier(
                              index: data['index'] as int,
                              isCorrect: data['user_answer'] ==
                                  data['correct_answer']),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: QuestionItem(data: data),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }
}
