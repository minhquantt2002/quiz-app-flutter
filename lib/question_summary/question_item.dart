import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({super.key, required this.data});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data['question'] as String,
          style: GoogleFonts.lato(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          data['user_answer'] as String,
          style: const TextStyle(color: Color.fromARGB(255, 202, 172, 252)),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          data['correct_answer'] as String,
          style: const TextStyle(color: Color.fromARGB(255, 102, 224, 143)),
        ),
      ],
    );
  }
}
