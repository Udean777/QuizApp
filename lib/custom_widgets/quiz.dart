import 'package:flutter/material.dart';
import 'package:quiz_apps/custom_widgets/data/dummy_questions.dart';
import 'package:quiz_apps/custom_widgets/home_content.dart';
import 'package:quiz_apps/custom_widgets/questions_screens.dart';
import 'package:quiz_apps/custom_widgets/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == dummyQuestions.length) {
      setState(() {
        activeScreen = "results-screen";
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = "questions-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomeContent(switchScreen);

    if (activeScreen == "questions-screen") {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == "results-screen") {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepOrange,
                Colors.yellowAccent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
