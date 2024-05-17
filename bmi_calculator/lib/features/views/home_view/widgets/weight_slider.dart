import 'package:flutter/material.dart';
import 'package:wheel_slider/wheel_slider.dart';

class WeightSlider extends StatefulWidget {
  const WeightSlider({
    super.key,
    required this.weight,
    required this.onAgeWeightSelected,
  });
  final int weight;
  final Function(int) onAgeWeightSelected;
  @override
  State<WeightSlider> createState() => _WeightSliderState();
}

class _WeightSliderState extends State<WeightSlider> {
  final int totalCount = 200;
  final int initValue = 60;
  int? currentValue = 10;
  @override
  Widget build(BuildContext context) {
    return WheelSlider.number(
      isVibrate: false,
      horizontal: true,
      verticalListHeight: 300.0,
      perspective: 0.01,
      totalCount: totalCount,
      initValue: initValue,
      unSelectedNumberStyle: const TextStyle(
        fontSize: 24.0,
        color: Colors.grey,
      ),
      selectedNumberStyle: const TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      currentIndex: currentValue,
      onValueChanged: (val) {
        setState(() {
          currentValue = val;
          widget.onAgeWeightSelected(val);
        });
      },
    );
  }
}
