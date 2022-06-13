import 'package:e_commerce_proejct/widgets/single_notification_list_tile.dart';
import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import '../widgets/Text_widget.dart';

class OfferNotifications extends StatelessWidget {
  const OfferNotifications({Key? key}) : super(key: key);

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
              const SizedBox(
                height: 16,
              ),
              SingleNotificationListTile(
                  leadingIcon: Icons.local_offer_outlined,
                  titleText: "The Best Title",
                  description:
                      "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo",
                  date: "April 30, 2014 1:01 PM"),
              const SizedBox(
                height: 32,
              ),
              SingleNotificationListTile(
                  leadingIcon: Icons.local_offer_outlined,
                  titleText: "SUMMER OFFER 98% Cashback",
                  description:
                      "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor",
                  date: "April 30, 2014 1:01 PM"),
              const SizedBox(
                height: 32,
              ),
              SingleNotificationListTile(
                  leadingIcon: Icons.local_offer_outlined,
                  titleText: "Special Offer 25% OFF",
                  description:
                      "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo ",
                  date: "April 30, 2014 1:01 PM"),
            ],
          ),
        ),
      ),
    );
  }
}
