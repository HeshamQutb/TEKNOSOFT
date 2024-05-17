import 'package:flutter/material.dart';
import '../../../../constant.dart';

class GenderSection extends StatefulWidget {
  final String gender;
  final bool isSelectedM;
  final bool isSelectedF;
  final Function(String) onGenderSelected;

  const GenderSection({super.key,
    required this.gender,
    required this.isSelectedM,
    required this.isSelectedF,
    required this.onGenderSelected,
  });

  @override
  State<GenderSection> createState() => _GenderSectionState();
}

class _GenderSectionState extends State<GenderSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              widget.onGenderSelected('Male');
            },
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Checkbox(
                  shape: const OvalBorder(),
                  value: true,
                  onChanged: (value) {},
                  activeColor: kPrimaryColor,
                ),
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: widget.isSelectedF ? Colors.grey[300] : null,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1.5,
                      color: widget.isSelectedM ? kPrimaryColor : Colors.transparent,
                    ),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.man,
                        size: 120,
                        color: widget.isSelectedM ? kPrimaryColor : Colors.grey,
                      ),
                      Text(
                        'Male',
                        style: Theme.of(context).textTheme.headlineMedium,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              widget.onGenderSelected('Female');
            },
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Checkbox(
                  shape: const OvalBorder(),
                  value: true,
                  onChanged: (value) {},
                  activeColor: kPrimaryColor,
                ),
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: widget.isSelectedM ? Colors.grey[300] : null,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 2,
                      color: widget.isSelectedF ? kPrimaryColor : Colors.transparent,
                    ),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.girl,
                        size: 120,
                        color: widget.isSelectedF ? kPrimaryColor : Colors.grey,
                      ),
                      Text(
                        'Female',
                        style: Theme.of(context).textTheme.headlineMedium,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
