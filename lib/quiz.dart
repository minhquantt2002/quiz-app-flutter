import 'package:flutter/material.dart';
import 'package:quizz_app/data/question.dart';
import 'package:quizz_app/question_screen.dart';
import 'package:quizz_app/result_screen.dart';
import 'package:quizz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  String? activeScreen;

  @override
  void initState() {
    activeScreen = 'start-screen';
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.deepOrange],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: activeScreen == 'start-screen'
            ? StartScreen(switchScreen)
            : activeScreen == 'result-screen'
                ? ResultScreen(
                    chosenAnswers: selectedAnswers,
                    onRestartQuiz: () {
                      setState(() {
                        activeScreen = 'start-screen';
                        selectedAnswers = [];
                      });
                    },
                  )
                : QuestionScreen(onChooseAnswer: chooseAnswer),
      ),
    ));
  }
}
