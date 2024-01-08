import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.index, required this.isCorrect});

  final int index;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCorrect
              ? const Color.fromARGB(255, 150, 198, 241)
              : const Color.fromARGB(255, 249, 133, 241),
          borderRadius: BorderRadius.circular(100)),
      child: Text(
        index.toString(),
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
