import 'package:flutter/material.dart';

class CommonStyle extends StatelessWidget {
  const CommonStyle(
      {super.key,
      required this.text,
      this.fontWeight,
      this.fontSize,
      this.letterSpacing,
      this.color,
      this.textAlign});
  final String text;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? letterSpacing;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: "Poppins",
        fontWeight: fontWeight,
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        color: color,
      ),
    );
  }
}
