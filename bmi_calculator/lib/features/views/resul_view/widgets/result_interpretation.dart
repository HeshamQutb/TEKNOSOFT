import 'package:bmi_calculator/core/services/calculations.dart';
import 'package:flutter/material.dart';

class ResultInterpretation extends StatelessWidget {
  const ResultInterpretation({super.key, required this.calculations});
  final Calculations calculations;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            calculations.getInterpretation(),
            style: const TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
