import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.widget});
  final Widget widget;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          padding: const MaterialStatePropertyAll(
            EdgeInsets.symmetric(
              vertical: 10,
            ),
          ),
          backgroundColor: const MaterialStatePropertyAll(
            kPrimaryColor,
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        onPressed:onPressed,
        child: widget,
      ),
    );
  }
}
