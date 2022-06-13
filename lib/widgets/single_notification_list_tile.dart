import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import 'Text_widget.dart';

class SingleNotificationListTile extends StatelessWidget {
  final IconData leadingIcon;
  final String titleText;
  final String description;
  final String date;

  const SingleNotificationListTile(
      {Key? key,
      required this.leadingIcon,
      required this.titleText,
      required this.description,
      required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 15,
      leading: Icon(
        leadingIcon,
        size: 25,
        color: AppConstants.primaryColor,
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
