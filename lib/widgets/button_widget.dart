import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import 'Text_widget.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double? width;
  final double? height;

  const ButtonWidget(
      {Key? key,
      required this.buttonText,
      required this.onPressed,
      this.width = double.infinity, this.height = 57})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: AppConstants.primaryColor,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 10),
                blurRadius: 5,
                color: AppConstants.primaryColor.withOpacity(0.2))
          ]),
      child: RaisedButton(
          elevation: 0,
          color: AppConstants.primaryColor,
          onPressed: () => onPressed(),
          child: TextWidget(
            txt: buttonText,
            fontSize: 14,
            fontWeight: FontWeight.w700,
            textColor: AppConstants.whiteColor,
          )),
    );
  }
}
