import 'package:bmi_calculator/features/views/resul_view/widgets/result_interpretation.dart';
import 'package:bmi_calculator/features/views/resul_view/widgets/result_user_info.dart';
import 'package:flutter/material.dart';

import '../../../../constant.dart';
import '../../../../core/services/calculations.dart';
import '../../../../core/widgets/custom_button.dart';

class ResultViewBody extends StatelessWidget {
  const ResultViewBody({
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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Result',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Your BMI is',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.3,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          calculations.bmiResult(),
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'kg/m2',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    '(${calculations.resultType()})',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ResultUserInfo(
                    gender: gender,
                    height: height,
                    age: age,
                    weight: weight,
                    calculations: calculations,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ResultInterpretation(
                    calculations: calculations,
                  ),
                ],
              ),
            ),
          ),
          CustomButton(
            widget: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'TRY AGAIN',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Icon(
                  Icons.refresh_outlined,
                  color: Colors.white,
                )
              ],
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
