import 'package:e_commerce_proejct/utils/app_constants.dart';
import 'package:flutter/material.dart';

class SelectColorsContainer extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const SelectColorsContainer(
      {Key? key, required this.color, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      width: 50,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: _showSelectedColorDot(isSelected),
    );
  }

  Widget _showSelectedColorDot(bool val) {
    if (val == true) {
      return Center(
          child: Container(
        height: 16,
        width: 16,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: AppConstants.whiteColor),
      ));
    } else {
      return const SizedBox(
        height: 0,
      );
    }
  }
}
