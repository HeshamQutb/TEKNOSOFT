import 'package:bmi_calculator/features/views/home_view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: const HomeViewBody(),
    );
  }
}









