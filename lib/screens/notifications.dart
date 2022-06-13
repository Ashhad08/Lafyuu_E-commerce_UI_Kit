import 'package:e_commerce_proejct/screens/activity_notifications.dart';
import 'package:e_commerce_proejct/screens/offer_notifications.dart';
import 'package:e_commerce_proejct/widgets/all_notifications_list_tile.dart';
import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import '../widgets/Text_widget.dart';
import 'feed_notifications.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 26, left: 16, right: 16),
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      color: AppConstants.subTxtColor,
                      size: 18,
                    ),
                    SizedBox(
                      width: 21,
                    ),
                    TextWidget(
                      txt: "Notification",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              const Divider(
                thickness: 1,
                height: 0,
                color: AppConstants.txtFieldColor,
              ),
              AllNotificationsListTile(
                leadingIcon: Icons.local_offer_outlined,
                titleText: "Offer",
                numbersOfNotifications: 2,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OfferNotifications()));
                },
              ),
              AllNotificationsListTile(
                leadingIcon: Icons.feed_outlined,
                titleText: "Feed",
                numbersOfNotifications: 3,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FeedNotifications()));
                },
              ),
              AllNotificationsListTile(
                leadingIcon: Icons.notifications_none_outlined,
                titleText: "Activity",
                numbersOfNotifications: 2,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ActivityNotifications()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
