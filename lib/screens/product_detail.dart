import 'package:e_commerce_proejct/screens/review_product.dart';
import 'package:e_commerce_proejct/widgets/button_widget.dart';
import 'package:e_commerce_proejct/widgets/select_color_container.dart';
import 'package:e_commerce_proejct/widgets/select_sizes_container.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../utils/all_lists.dart';
import '../utils/app_constants.dart';
import '../widgets/Text_widget.dart';
import '../widgets/product_display_container_widget.dart';
import '../widgets/four_ratings_widget.dart';
import '../widgets/single_review.dart';

class ProductDetail extends StatelessWidget {
  final _productImageController = PageController();
  final _lists = AllLists();

  ProductDetail({Key? key}) : super(key: key);

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
                    Expanded(
                        child: TextWidget(
                      txt: "Nike Air Max 270 Rea...",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    )),
                    Icon(
                      Icons.search,
                      color: AppConstants.subTxtColor,
                      size: 24,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: AppConstants.subTxtColor,
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
              SizedBox(
                height: 228,
                child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: _productImageController,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Image.asset("assets/images/productimage1.png");
                    }),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: _productImageController,
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
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Expanded(
                          child: TextWidget(
                            txt: "Nike Air Zoom Pegasus 36 Miami",
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            textColor: AppConstants.titleTextColor,
                          ),
                        ),
                        SizedBox(
                          width: 44,
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: AppConstants.subTxtColor,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const FourRating(),
                    const SizedBox(
                      height: 16,
                    ),
                    const TextWidget(
                      txt: "\$299,43",
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.primaryColor,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const TextWidget(
                      txt: "Select Size",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: _lists.sizesList.length,
                          itemBuilder: (context, index) {
                            return SelectSizesContainer(
                              size: _lists.sizesList[index].size,
                              isSelected: _lists.sizesList[index].isSelected,
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const TextWidget(
                      txt: "Select Color",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: _lists.colorsList.length,
                          itemBuilder: (context, index) {
                            return SelectColorsContainer(
                              color: _lists.colorsList[index].color,
                              isSelected: _lists.colorsList[index].isSelected,
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const TextWidget(
                      txt: "Specification",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextWidget(
                          txt: "Shown:",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          textColor: AppConstants.titleTextColor,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            TextWidget(
                              txt: "Laser",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              textColor: AppConstants.subTxtColor,
                            ),
                            TextWidget(
                              txt: "Blue/Anthracite/Watermel",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              textColor: AppConstants.subTxtColor,
                            ),
                            TextWidget(
                              txt: "on/White",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              textColor: AppConstants.subTxtColor,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TextWidget(
                          txt: "Style:",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          textColor: AppConstants.titleTextColor,
                        ),
                        TextWidget(
                          txt: "CD0113-400",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          textColor: AppConstants.subTxtColor,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const TextWidget(
                      txt:
                          "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      textColor: AppConstants.subTxtColor,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        TextWidget(
                          txt: "Review Product",
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          textColor: AppConstants.titleTextColor,
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReviewProduct()));
                          },
                          child: TextWidget(
                            txt: "See More",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            textColor: AppConstants.primaryColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: const [
                        FourRating(),
                        SizedBox(
                          width: 8,
                        ),
                        TextWidget(
                          txt: "4.5 (5 Review)",
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          textColor: AppConstants.subTxtColor,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const SingleReview(
                        profileImagePath: "assets/images/userimage1.png",
                        name: "James Lawson",
                        isFullRating: false,
                        review:
                            "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites."),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      height: 23,
                    ),
                    const TextWidget(
                      txt: "You Might Also Like",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      height: 244,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: _lists.flashSaleList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return ProductDisplayContainer(
                              margin: 16,
                              imagePath: _lists.flashSaleList[index].imagePath,
                              newPrice: _lists.flashSaleList[index].newPrice,
                              oldPrice: _lists.flashSaleList[index].oldPrice,
                              discount: _lists.flashSaleList[index].discount,
                              productName:
                                  _lists.flashSaleList[index].productName,
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: ButtonWidget(
                          buttonText: "Add To Cart", onPressed: () {}),
                    ),
                    const SizedBox(
                      height: 37,
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
