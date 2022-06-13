import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import 'Text_widget.dart';

class AllNotificationsListTile extends StatelessWidget {
  final IconData leadingIcon;
  final String titleText;
  final int numbersOfNotifications;
  final VoidCallback onPressed;

  const AllNotificationsListTile(
      {Key? key,
      required this.leadingIcon,
      required this.titleText,
      required this.numbersOfNotifications,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onPressed(),
      leading: Icon(
        leadingIcon,
        size: 25,
        color: AppConstants.primaryColor,
      ),
      title: TextWidget(
        txt: titleText,
        fontSize: 12,
        fontWeight: FontWeight.w700,
        textColor: AppConstants.titleTextColor,
      ),
      trailing: Container(
        height: 20,
        width: 20,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: AppConstants.lightRedColor),
        child: Center(
          child: TextWidget(
            txt: "$numbersOfNotifications",
            fontSize: 10,
            fontWeight: FontWeight.w700,
            textColor: AppConstants.whiteColor,
          ),
        ),
      ),
    );
  }
}
