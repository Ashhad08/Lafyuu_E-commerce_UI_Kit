import 'package:e_commerce_proejct/widgets/Text_form_field_widget.dart';
import 'package:e_commerce_proejct/widgets/four_ratings_widget.dart';
import 'package:flutter/material.dart';

import '../utils/all_lists.dart';
import '../utils/app_constants.dart';
import '../widgets/Text_widget.dart';

class WriteReview extends StatelessWidget {
  final _lists = AllLists();

  WriteReview({Key? key}) : super(key: key);

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
                      txt: "Write Review",
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
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextWidget(
                      txt:
                          "Please write Overall level of satisfaction with your shipping / Delivery Service",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        FourRating(
                          iconSize: 30,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        const TextWidget(
                          txt: "4/5",
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          textColor: AppConstants.subTxtColor,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const TextWidget(
                      txt: "Write Your Review",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.subTxtColor,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const TextFormFieldWidget(
                      hintText: "Write your review here",
                      isPasswordField: false,
                      minLines: 8,
                      maxLines: null,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const TextWidget(
                      txt: "Add Photo",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 72,
                          child: ListView.builder(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: _lists.productImagesList.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.only(right: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Image.asset(
                                      _lists.productImagesList[index]),
                                );
                              }),
                        ),
                        Container(
                          height: 72,
                          width: 72,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: AppConstants.txtFieldColor),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              size: 20,
                              color: AppConstants.subTxtColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
