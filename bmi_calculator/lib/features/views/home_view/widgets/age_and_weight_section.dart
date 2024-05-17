import 'package:bmi_calculator/features/views/home_view/widgets/weight_slider.dart';
import 'package:flutter/material.dart';

class AgeAndWeightSection extends StatefulWidget {
  const AgeAndWeightSection({
    super.key,
    required this.age,
    required this.onAgePlusSelected,
    required this.onAgeMinusSelected,
    required this.onAgeWeightSelected,
    required this.weight,
  });
  final int age;
  final int weight;
  final Function(int) onAgePlusSelected;
  final Function(int) onAgeMinusSelected;
  final Function(int) onAgeWeightSelected;
  @override
  State<AgeAndWeightSection> createState() => _AgeAndWeightSectionState();
}

class _AgeAndWeightSectionState extends State<AgeAndWeightSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.onAgeMinusSelected(widget.age);
                      });
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(width: 1),
                      ),
                      child: const Icon(
                        Icons.remove,
                      ),
                    ),
                  ),
                  Text(
                    '${widget.age}',
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.onAgePlusSelected(widget.age);
                      });
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(width: 1),
                      ),
                      child: const Icon(
                        Icons.add,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1),
            ),
            child: WeightSlider(
              weight: widget.weight,
              onAgeWeightSelected: widget.onAgeWeightSelected,
            ),
          ),
        ),
      ],
    );
  }
}
