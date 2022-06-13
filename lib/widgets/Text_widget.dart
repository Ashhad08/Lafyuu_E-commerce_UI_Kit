import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String txt;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? textColor;
  final TextAlign? align;
  final TextDecoration? decoration;

  const TextWidget({
    Key? key,
    required this.txt,
    required this.fontSize,
    required this.fontWeight,
    this.textColor,
    this.align,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: GoogleFonts.poppins(
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: 0.5,
          decoration: decoration,
          color: textColor),
      textAlign: align,
    );
  }
}
