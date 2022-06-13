import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import 'Text_widget.dart';

class FeedNotificationListTile extends StatelessWidget {
  final String leadingImagePath;
  final String titleText;
  final String description;
  final String date;

  const FeedNotificationListTile(
      {Key? key,
      required this.leadingImagePath,
      required this.titleText,
      required this.description,
      required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Image.asset(leadingImagePath),
      ),
      title: TextWidget(
        txt: titleText,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        textColor: AppConstants.titleTextColor,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            txt: description,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            textColor: AppConstants.subTxtColor,
          ),
          const SizedBox(
            height: 8,
          ),
          TextWidget(
            txt: date,
            fontSize: 10,
            fontWeight: FontWeight.w400,
            textColor: AppConstants.titleTextColor,
          ),
        ],
      ),
    );
  }
}
