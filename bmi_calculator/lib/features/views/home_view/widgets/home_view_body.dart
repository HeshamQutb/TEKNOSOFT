import 'package:bmi_calculator/features/views/resul_view/result_view.dart';
import 'package:flutter/material.dart';
import '../../../../core/services/calculations.dart';
import '../../../../core/widgets/custom_button.dart';
import 'age_and_weight_section.dart';
import 'gender_section.dart';
import 'height_section.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  String gender = 'Male';
  bool isSelectedM = true;
  bool isSelectedF = false;
  int height = 180;
  int age = 22;
  int weight = 60;
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
                  Text(
                    'Gender',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  GenderSection(
                    gender: gender,
                    isSelectedM: isSelectedM,
                    isSelectedF: isSelectedF,
                    onGenderSelected: (selectedGender) {
                      setState(() {
                        gender = selectedGender;
                        isSelectedM = selectedGender == 'Male';
                        isSelectedF = selectedGender == 'Female';
                      });
                    },
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Height (cm)',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  HeightSection(
                    height: height,
                    onHeightSelected: (selectedHeight) {
                      setState(() {
                        height = selectedHeight;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            'Age',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Weight (kg)',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  AgeAndWeightSection(
                    age: age,
                    onAgePlusSelected: (plusAge) {
                      setState(() {
                        age = plusAge + 1;
                      });
                    },
                    onAgeMinusSelected: (minusAge) {
                      setState(() {
                        age = minusAge - 1;
                      });
                    },
                    weight: weight,
                    onAgeWeightSelected: (selectedWeight) {
                      setState(() {
                        weight = selectedWeight;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                ],
              ),
            ),
          ),
          CustomButton(
            widget: const Text(
              'CALCULATE BMI',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            onPressed: () {
              Calculations calculation = Calculations(
                height: height,
                weight: weight,
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultView(
                    gender: gender,
                    height: height,
                    age: age,
                    weight: weight,
                    calculations: calculation,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
