import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final Alignment alignment;
  final int? maxLine; // Changed to nullable type
  final double height;

  final FontWeight fontWeight;

  CustomText({
    this.text = '',
    this.fontSize = 16,
    this.color = Colors.black,
    this.alignment = Alignment.topLeft,
    this.maxLine,
    this.fontWeight = FontWeight.w400,
    this.height = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
            color: color,
            height: height,
            fontSize: fontSize,
            fontWeight: fontWeight),
        maxLines: maxLine,
      ),
    );
  }
}
