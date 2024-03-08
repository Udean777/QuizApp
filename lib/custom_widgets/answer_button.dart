import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onPress,
  });

  final String answerText;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 40,
          )),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
