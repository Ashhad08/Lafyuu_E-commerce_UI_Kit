import 'package:e_commerce_proejct/screens/favorite_product.dart';
import 'package:e_commerce_proejct/screens/notifications.dart';
import 'package:e_commerce_proejct/screens/search.dart';
import 'package:e_commerce_proejct/utils/all_lists.dart';
import 'package:e_commerce_proejct/utils/app_constants.dart';
import 'package:e_commerce_proejct/widgets/Text_widget.dart';
import 'package:e_commerce_proejct/widgets/category_container_widget.dart';
import 'package:e_commerce_proejct/widgets/offer_banner_widget.dart';
import 'package:e_commerce_proejct/widgets/product_display_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatelessWidget {
  final _bannerController = PageController();
  final _lists = AllLists();

  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 28),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Search()));
                        },
                        child: Container(
                          height: 46,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: AppConstants.txtFieldColor)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 17,
                              ),
                              Icon(
                                Icons.search,
                                color: AppConstants.primaryColor,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              TextWidget(
                                txt: "Search Product",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                textColor: AppConstants.subTxtColor,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 19),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FavoriteProduct()));
                      },
                      child: const Icon(
                        Icons.favorite_border,
                        color: AppConstants.subTxtColor,
                      ),
                    ),
                    const SizedBox(
                      width: 22.8,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Notifications()));
                      },
                      child: const Icon(
                        Icons.notifications_none_outlined,
                        color: AppConstants.subTxtColor,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                thickness: 1,
                height: 0,
                color: AppConstants.txtFieldColor,
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 190,
                child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: _bannerController,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const OfferBanner();
                    }),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: _bannerController,
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
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextWidget(
                      txt: "Category",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                    TextWidget(
                      txt: "More Category",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.primaryColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  height: 112,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: _lists.categoriesList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CategoryContainer(
                          categoryName:
                              _lists.categoriesList[index].categoryName,
                          imagePath: _lists.categoriesList[index].imagePath,
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextWidget(
                      txt: "Flash Sale",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                    TextWidget(
                      txt: "See More",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.primaryColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SizedBox(
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
                          productName: _lists.flashSaleList[index].productName,
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextWidget(
                      txt: "Mega Sale",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                    TextWidget(
                      txt: "See More",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.primaryColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 9),
                child: SizedBox(
                  height: 244,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: _lists.megaSaleList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ProductDisplayContainer(
                          imagePath: _lists.megaSaleList[index].imagePath,
                          newPrice: _lists.megaSaleList[index].newPrice,
                          oldPrice: _lists.megaSaleList[index].oldPrice,
                          discount: _lists.megaSaleList[index].discount,
                          productName: _lists.megaSaleList[index].productName,
                          margin: 16,
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          "assets/images/banner2.png",
                          height: 206,
                          width: 343,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 24, top: 48),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              TextWidget(
                                txt: "Recomended\nProduct",
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                textColor: AppConstants.whiteColor,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextWidget(
                                txt: "We recommend the best for you",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                textColor: AppConstants.whiteColor,
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      mainAxisExtent: 268,
                    ),
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: _lists.recomendedProductList.length - 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ProductDisplayContainer(
                          imagePath:
                              _lists.recomendedProductList[index].imagePath,
                          newPrice:
                              _lists.recomendedProductList[index].newPrice,
                          oldPrice:
                              _lists.recomendedProductList[index].oldPrice,
                          discount:
                              _lists.recomendedProductList[index].discount,
                          productName:
                              _lists.recomendedProductList[index].productName,
                          addRating: true,
                          margin: 0,
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
