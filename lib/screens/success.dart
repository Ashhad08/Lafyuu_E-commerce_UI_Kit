import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import '../widgets/Text_widget.dart';
import '../widgets/button_widget.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 72,
              width: 72,
              decoration: BoxDecoration(
                  color: AppConstants.primaryColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 5,
                        color: AppConstants.primaryColor.withOpacity(0.2))
                  ]),
              child: const Center(
                child: Icon(
                  Icons.done,
                  color: AppConstants.whiteColor,
                  size: 30,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            const TextWidget(
              txt: "Success",
              fontSize: 24,
              fontWeight: FontWeight.w700,
              textColor: AppConstants.titleTextColor,
            ),
            const SizedBox(
              height: 8,
            ),
            const TextWidget(
              txt: "thank you for shopping using lafyuu",
              fontSize: 12,
              fontWeight: FontWeight.w400,
              textColor: AppConstants.subTxtColor,
            ),
            const SizedBox(
              height: 16,
            ),
            ButtonWidget(
              buttonText: "Back To Order",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
