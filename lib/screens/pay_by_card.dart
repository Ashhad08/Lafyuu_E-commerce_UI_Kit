import 'package:e_commerce_proejct/screens/success.dart';
import 'package:e_commerce_proejct/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../utils/app_constants.dart';
import '../widgets/Text_widget.dart';

class PayByCard extends StatelessWidget {
  final _cardController = PageController();

  PayByCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      body: SafeArea(
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
                  Expanded(
                      child: TextWidget(
                    txt: "Choose Card",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    textColor: AppConstants.titleTextColor,
                  )),
                  Icon(
                    Icons.add,
                    color: AppConstants.primaryColor,
                    size: 24,
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
            Column(
              children: [
                SizedBox(
                  height: 196,
                  child: PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      controller: _cardController,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            padding: EdgeInsets.all(24),
                            decoration: BoxDecoration(
                                color: AppConstants.primaryColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 22,
                                      width: 22,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff3193C4)
                                              .withOpacity(0.7)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Container(
                                        height: 22,
                                        width: 22,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xff3193C4)
                                                .withOpacity(0.7)),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 32,
                                ),
                                FittedBox(
                                  child: TextWidget(
                                    txt: "6326    9124    8124    9875",
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    textColor: AppConstants.whiteColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 17,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        TextWidget(
                                          txt: "CARD HOLDER",
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          textColor: AppConstants.whiteColor,
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        TextWidget(
                                          txt: "Lailyfa Febrina",
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          textColor: AppConstants.whiteColor,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 27,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 2,
                                        ),
                                        TextWidget(
                                          txt: "CARD SAVE",
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          textColor: AppConstants.whiteColor,
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        TextWidget(
                                          txt: "19/2042",
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          textColor: AppConstants.whiteColor,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: SmoothPageIndicator(
                    controller: _cardController,
                    count: 5,
                    effect: const WormEffect(
                        dotHeight: 8,
                        dotWidth: 8,
                        activeDotColor: AppConstants.primaryColor,
                        dotColor: AppConstants.txtFieldColor
                        // strokeWidth: 5,
                        ),
                  ),
                ),
                SizedBox(
                  height: 353,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ButtonWidget(
                      buttonText: "Pay \$766.86",
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Success()));
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
