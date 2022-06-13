import 'package:e_commerce_proejct/utils/app_constants.dart';
import 'package:flutter/material.dart';

import '../utils/all_lists.dart';
import '../widgets/Text_widget.dart';
import '../widgets/product_display_container_widget.dart';

class FavoriteProduct extends StatelessWidget {
  final _lists = AllLists();

  FavoriteProduct({Key? key}) : super(key: key);

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
                      txt: "Favorite Product ",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    )),
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
                padding: const EdgeInsets.only(right: 16),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      mainAxisExtent: 271,
                    ),
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: _lists.favouriteProductsList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: ProductDisplayContainer(
                          imagePath:
                              _lists.favouriteProductsList[index].imagePath,
                          newPrice:
                              _lists.favouriteProductsList[index].newPrice,
                          oldPrice:
                              _lists.favouriteProductsList[index].oldPrice,
                          discount:
                              _lists.favouriteProductsList[index].discount,
                          productName:
                              _lists.favouriteProductsList[index].productName,
                          addRating: true,
                          addDeleteButton: true,
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
