import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import 'Text_widget.dart';

class SingleRatingContainer extends StatelessWidget {
  final String rating;

  const SingleRatingContainer({Key? key, required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      width: 62,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppConstants.txtFieldColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.star,
            color: AppConstants.yellowColor,
            size: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          TextWidget(
            txt: rating,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            textColor: AppConstants.subTxtColor,
          ),
        ],
      ),
    );
  }
}
