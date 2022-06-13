import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_constants.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final Icon? prefixIcon;
  final Widget? suffix;
  final Function(String)? validator;
  final bool isPasswordField;
  final int? minLines;
  final int? maxLines;

  const TextFormFieldWidget(
      {Key? key,
      required this.hintText,
      this.prefixIcon,
      this.validator,
      required this.isPasswordField,
      this.minLines = 1, this.suffix, this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: minLines,
      maxLines: maxLines,
      obscureText: isPasswordField,
      style: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
          color: AppConstants.subTxtColor),
      validator: (val) => validator!(val!),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            color: AppConstants.subTxtColor),
        prefixIcon: prefixIcon,
        suffixIcon: suffix,
        errorStyle: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
        ),
        focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: AppConstants.redColor)),
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: AppConstants.redColor)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: AppConstants.primaryColor)),
        enabledBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(width: 1, color: AppConstants.txtFieldColor)),
      ),
    );
  }
}
