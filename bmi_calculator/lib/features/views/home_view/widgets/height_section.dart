import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:vertical_weight_slider/vertical_weight_slider.dart';

class HeightSection extends StatefulWidget {
  const HeightSection({
    super.key,
    required this.height,
    required this.onHeightSelected,
  });
  final int height;
  final Function(int) onHeightSelected;
  @override
  State<HeightSection> createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
  late WeightSliderController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WeightSliderController(
      initialWeight: widget.height.toDouble(),
      minWeight: 100,
      interval: 1.0,
      maxWeight: 220,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                widget.height.toStringAsFixed(0),
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: VerticalWeightSlider(
              isVertical: false,
              controller: _controller,
              decoration: const PointerDecoration(
                width: 50,
                height: 3,
                largeColor: Color(0xFF898989),
                mediumColor: Color(0xFFC5C5C5),
                smallColor: Color(0xFFF0F0F0),
                gap: 0.0,
              ),
              onChanged: (double value) {
                setState(() {
                  widget.onHeightSelected(value as int);
                });
              },
              indicator: Container(
                height: 3,
                width: 150,
                alignment: Alignment.centerLeft,
                color: kPrimaryColor,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
