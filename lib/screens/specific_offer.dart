import 'package:e_commerce_proejct/widgets/Text_widget.dart';
import 'package:e_commerce_proejct/widgets/offer_banner_widget.dart';
import 'package:flutter/material.dart';

import '../utils/all_lists.dart';
import '../utils/app_constants.dart';
import '../widgets/product_display_container_widget.dart';

class SpecificOffer extends StatelessWidget {
  final _lists = AllLists();

  SpecificOffer({Key? key}) : super(key: key);

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
                      txt: "Super Flash Sale",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    )),
                    Icon(
                      Icons.search,
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
              const SizedBox(
                height: 16,
              ),
              const OfferBanner(),
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
                    itemCount: _lists.recomendedProductList.length,
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
