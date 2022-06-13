import 'package:flutter/material.dart';

import '../utils/app_constants.dart';

class FullRating extends StatelessWidget {
  final double? iconSize;

  const FullRating({Key? key, this.iconSize = 20}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: AppConstants.yellowColor,
          size: iconSize,
        ),
        const SizedBox(
          width: 2,
        ),
        Icon(
          Icons.star,
          color: AppConstants.yellowColor,
          size: iconSize,
        ),
        const SizedBox(
          width: 2,
        ),
        Icon(
          Icons.star,
          color: AppConstants.yellowColor,
          size: iconSize,
        ),
        const SizedBox(
          width: 2,
        ),
        Icon(
          Icons.star,
          color: AppConstants.yellowColor,
          size: iconSize,
        ),
        const SizedBox(
          width: 2,
        ),
        Icon(
          Icons.star,
          color: AppConstants.yellowColor,
          size: iconSize,
        ),
      ],
    );
  }
}
