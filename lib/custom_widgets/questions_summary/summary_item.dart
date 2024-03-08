import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_apps/custom_widgets/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData["user_answers"] == itemData["correct_answers"];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData["question_index"] as int,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              itemData["question"] as String,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              itemData["user_answers"] as String,
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 237, 35),
              ),
            ),
            Text(
              itemData["correct_answers"] as String,
              style: const TextStyle(
                color: Color.fromARGB(255, 181, 254, 246),
              ),
            ),
          ],
        ))
      ],
    );
  }
}
