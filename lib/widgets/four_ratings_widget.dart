import 'package:flutter/material.dart';

import '../utils/app_constants.dart';

class FourRating extends StatelessWidget {
  final double? iconSize;

  const FourRating({Key? key, this.iconSize = 20}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
          color: AppConstants.txtFieldColor,
          size: iconSize,
        ),
      ],
    );
  }
}
