import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import 'Text_widget.dart';

class OfferBanner extends StatelessWidget {
  const OfferBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        children: [
          Image.asset(
            "assets/images/banner1.png",
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWidget(
                  txt: "Super Flash Sale\n50% Off",
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  textColor: AppConstants.whiteColor,
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    Container(
                      height: 41,
                      width: 42,
                      decoration: BoxDecoration(
                        color: AppConstants.whiteColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                          child: TextWidget(
                        txt: "08",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        textColor: AppConstants.titleTextColor,
                      )),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const TextWidget(
                      txt: ":",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.whiteColor,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 41,
                      width: 42,
                      decoration: BoxDecoration(
                        color: AppConstants.whiteColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                          child: TextWidget(
                        txt: "34",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        textColor: AppConstants.titleTextColor,
                      )),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const TextWidget(
                      txt: ":",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.whiteColor,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 41,
                      width: 42,
                      decoration: BoxDecoration(
                        color: AppConstants.whiteColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                          child: TextWidget(
                        txt: "52",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        textColor: AppConstants.titleTextColor,
                      )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
