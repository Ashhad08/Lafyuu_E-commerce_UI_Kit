import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import 'Text_widget.dart';

class SelectSizesContainer extends StatelessWidget {
  final String size;
  final bool isSelected;

  const SelectSizesContainer(
      {Key? key, required this.size, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      width: 50,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: _highlightSelectedColor(isSelected))),
      child: Center(
        child: TextWidget(
          txt: size,
          fontSize: 14,
          fontWeight: FontWeight.w700,
          textColor: AppConstants.titleTextColor,
        ),
      ),
    );
  }

  Color _highlightSelectedColor(bool val) {
    if (val == true) {
      return AppConstants.primaryColor;
    } else {
      return AppConstants.txtFieldColor;
    }
  }
}
