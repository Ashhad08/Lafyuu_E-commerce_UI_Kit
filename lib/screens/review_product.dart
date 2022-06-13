import 'package:e_commerce_proejct/screens/write_review.dart';
import 'package:e_commerce_proejct/widgets/button_widget.dart';
import 'package:e_commerce_proejct/widgets/rating_container.dart';
import 'package:flutter/material.dart';

import '../utils/all_lists.dart';
import '../utils/app_constants.dart';
import '../widgets/Text_widget.dart';
import '../widgets/single_review.dart';

class ReviewProduct extends StatelessWidget {
  final _lists = AllLists();

  ReviewProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
                      txt: "5 Review",
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
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 12),
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppConstants.primaryColor.withOpacity(0.3),
                        ),
                        child: const Center(
                          child: TextWidget(
                            txt: "All Review",
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            textColor: AppConstants.primaryColor,
                          ),
                        ),
                      ),
                      const SingleRatingContainer(rating: "1"),
                      const SingleRatingContainer(rating: "2"),
                      const SingleRatingContainer(rating: "3"),
                      const SingleRatingContainer(rating: "4"),
                      const SingleRatingContainer(rating: "5"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SingleReview(
                        profileImagePath: "assets/images/userimage1.png",
                        name: "James Lawson",
                        isFullRating: false,
                        review:
                            "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites."),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 72,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: _lists.productImagesList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child:
                                  Image.asset(_lists.productImagesList[index]),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const TextWidget(
                      txt: "December 10, 2016",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      textColor: AppConstants.subTxtColor,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const SingleReview(
                        profileImagePath: "assets/images/userimage2.png",
                        name: "Laura Octavian",
                        isFullRating: false,
                        review:
                            "This is really amazing product, i like the design of product, I hope can buy it again!"),
                    const SizedBox(
                      height: 16,
                    ),
                    const TextWidget(
                      txt: "December 10, 2016",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      textColor: AppConstants.subTxtColor,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const SingleReview(
                        profileImagePath: "assets/images/userimage3.png",
                        name: "Jhonson Bridge",
                        isFullRating: true,
                        review:
                            "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit"),
                    const SizedBox(
                      height: 16,
                    ),
                    const TextWidget(
                      txt: "December 10, 2016",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      textColor: AppConstants.subTxtColor,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const SingleReview(
                        profileImagePath: "assets/images/userimage4.png",
                        name: "Griffin Rod",
                        isFullRating: true,
                        review:
                            "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small  "),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 72,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: _lists.productImagesList.length - 1,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child:
                                  Image.asset(_lists.productImagesList[index]),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const TextWidget(
                      txt: "December 10, 2016",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      textColor: AppConstants.subTxtColor,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ButtonWidget(
                        buttonText: "Write Review",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WriteReview()));
                        }),
                    const SizedBox(
                      height: 37,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
