import 'package:flutter/material.dart';
import 'package:quize_app/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryItem(data);
            // return Row(
            //   children: [
            //     Text(((data['question'] as int) + 1).toString()),
            //     Expanded(
            //       child: Column(
            //         children: [
            //           Text(data['question'] as String),
            //           const SizedBox(
            //             height: 5,
            //           ),
            //           Text(data['user-answer'] as String),
            //           Text(data['correct-answer'] as String),
            //         ],
            //       ),
            //     ),
            //   ],
            // );
          }).toList(),
        ),
      ),
    );
  }
}
