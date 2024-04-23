import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
   const TextWidget({
    super.key,
    required this.text1,
    required this.text2,
     required this.sizedBox,
  });
  final String text1;
  final String text2;
  final double sizedBox;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          //'Fast Delivery Extra  50 LE  ',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
         SizedBox(
         width: sizedBox,
        ),
        Text(
          text2,
          // 'Select',
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
