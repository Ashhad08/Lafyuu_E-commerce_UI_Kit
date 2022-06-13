import 'package:e_commerce_proejct/screens/search.dart';
import 'package:flutter/material.dart';

import '../utils/all_lists.dart';
import '../utils/app_constants.dart';
import '../widgets/Text_widget.dart';
import '../widgets/category_container_widget.dart';
import 'favorite_product.dart';
import 'notifications.dart';

class Explore extends StatelessWidget {
  final _lists = AllLists();

  Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
                            children: const [
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
                                builder: (context) => const Notifications()));
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextWidget(
                      txt: "Man Fashion",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: _lists.manFashionList.length,
                      itemBuilder: (context, index) {
                        return CategoryContainer(
                          categoryName:
                              _lists.manFashionList[index].categoryName,
                          imagePath: _lists.manFashionList[index].imagePath,
                        );
                      },
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 16,
                        mainAxisExtent: 112,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const TextWidget(
                      txt: "Woman Fashion",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: _lists.womanFashionList.length,
                      itemBuilder: (context, index) {
                        return CategoryContainer(
                          categoryName:
                              _lists.womanFashionList[index].categoryName,
                          imagePath: _lists.womanFashionList[index].imagePath,
                        );
                      },
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 16,
                        mainAxisExtent: 112,
                      ),
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
