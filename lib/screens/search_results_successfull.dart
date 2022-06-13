import 'package:e_commerce_proejct/screens/filter.dart';
import 'package:e_commerce_proejct/screens/list_category.dart';
import 'package:e_commerce_proejct/screens/sort_by.dart';
import 'package:e_commerce_proejct/widgets/Text_widget.dart';
import 'package:e_commerce_proejct/widgets/bottom_navigation.dart';
import 'package:e_commerce_proejct/widgets/button_widget.dart';
import 'package:flutter/material.dart';

import '../utils/all_lists.dart';
import '../utils/app_constants.dart';
import '../widgets/Text_form_field_widget.dart';
import '../widgets/product_display_container_widget.dart';

class SearchResultsSuccessFull extends StatelessWidget {
  final _lists = AllLists();

  SearchResultsSuccessFull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int result = _lists.resultProductListFull.length;
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 28),
                child: Row(
                  children: [
                    const Expanded(
                      child: TextFormFieldWidget(
                        hintText: "Search Product",
                        isPasswordField: false,
                        prefixIcon: Icon(Icons.search_sharp),
                        suffix: Icon(Icons.clear,color: AppConstants.subTxtColor,) ,
                      ),
                    ),
                    const SizedBox(width: 19),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SortBy()));
                      },
                      child: const Icon(
                        Icons.sort_outlined,
                        color: AppConstants.subTxtColor,
                      ),
                    ),
                    const SizedBox(
                      width: 19,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Filter()));
                      },
                      child: const Icon(
                        Icons.filter_alt_outlined,
                        color: AppConstants.primaryColor,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                        child: TextWidget(
                      txt: "$result Results",
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.subTxtColor,
                    )),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListCategory()));
                      },
                      child: Row(
                        children: const [
                          TextWidget(
                            txt: "Man Shoes",
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            textColor: AppConstants.titleTextColor,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            size: 20,
                            color: AppConstants.subTxtColor,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              _showResults(result, context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _showResults(int length, BuildContext context) {
    if (length > 0) {
      return Padding(
        padding: const EdgeInsets.only(right: 16),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              mainAxisExtent: 268,
            ),
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: _lists.resultProductListFull.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ProductDisplayContainer(
                  imagePath: _lists.resultProductListFull[index].imagePath,
                  newPrice: _lists.resultProductListFull[index].newPrice,
                  oldPrice: _lists.resultProductListFull[index].oldPrice,
                  discount: _lists.resultProductListFull[index].discount,
                  productName: _lists.resultProductListFull[index].productName,
                  addRating: true,
                  margin: 0,
                ),
              );
            }),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 133),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                  Icons.clear,
                  color: AppConstants.whiteColor,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const TextWidget(
              txt: "Product Not Found",
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
                buttonText: "Back to Home",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavigation()));
                })
          ],
        ),
      );
    }
  }
}
