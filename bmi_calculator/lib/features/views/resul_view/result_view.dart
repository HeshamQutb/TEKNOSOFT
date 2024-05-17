import 'package:bmi_calculator/core/services/calculations.dart';
import 'package:bmi_calculator/features/views/resul_view/widgets/result_view_body.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({
    super.key,
    required this.gender,
    required this.height,
    required this.age,
    required this.weight,
    required this.calculations,
  });
  final String gender;
  final int height;
  final int age;
  final int weight;
  final Calculations calculations;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: const Text('back'),
        titleSpacing: 0.0,
      ),
      body: ResultViewBody(
        gender: gender,
        height: height,
        age: age,
        weight: weight,
        calculations: calculations,
      ),
    );
  }
}
