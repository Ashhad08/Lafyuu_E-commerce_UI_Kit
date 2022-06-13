import 'package:e_commerce_proejct/widgets/full_rating.dart';
import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import 'Text_widget.dart';
import 'four_ratings_widget.dart';

class SingleReview extends StatelessWidget {
  final String profileImagePath;
  final String name;
  final bool isFullRating;
  final String review;

  const SingleReview(
      {Key? key,
      required this.profileImagePath,
      required this.name,
      required this.isFullRating,
      required this.review})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
                radius: 25, backgroundImage: AssetImage(profileImagePath)),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  txt: name,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  textColor: AppConstants.titleTextColor,
                ),
                _rating(isFullRating),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        TextWidget(
          txt: review,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          textColor: AppConstants.subTxtColor,
        ),
      ],
    );
  }

  Widget _rating(bool val) {
    if (isFullRating == true) {
      return const FullRating();
    } else {
      return const FourRating();
    }
  }
}
