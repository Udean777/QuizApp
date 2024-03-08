import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeContent extends StatelessWidget {
  const HomeContent(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            height: 300,
            color: const Color.fromARGB(196, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.7,
          //   child: Image.asset(
          //     "assets/images/quiz-logo.png",
          //     width: 300,
          //     height: 300,
          //   ),
          // ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Learn Flutter the fun way",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              backgroundColor: Colors.white,
              textStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.redAccent,
              size: 25,
            ),
            label: Text(
              "Start Quiz",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
