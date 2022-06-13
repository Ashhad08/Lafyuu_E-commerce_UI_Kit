import 'package:e_commerce_proejct/widgets/Text_form_field_widget.dart';
import 'package:e_commerce_proejct/widgets/button_widget.dart';
import 'package:e_commerce_proejct/widgets/filter_container.dart';
import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import '../widgets/Text_widget.dart';

class Filter extends StatefulWidget {
  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  RangeValues _currentRangeValues = const RangeValues(20, 80);

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
                padding: const EdgeInsets.only(top: 26, left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.clear,
                          color: AppConstants.subTxtColor,
                          size: 18,
                        ),
                        SizedBox(
                          width: 21,
                        ),
                        TextWidget(
                          txt: "Filter Search",
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          textColor: AppConstants.titleTextColor,
                        ),
                      ],
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
                    TextWidget(
                      txt: "Price Range",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: TextFormFieldWidget(
                          maxLines: 1,
                          minLines: 1,
                          hintText: "\$1.245",
                          isPasswordField: false,
                        )),
                        SizedBox(
                          width: 13,
                        ),
                        Expanded(
                          child: TextFormFieldWidget(
                            maxLines: 1,
                            minLines: 1,
                            hintText: "\$1.245",
                            isPasswordField: false,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
              RangeSlider(
                values: _currentRangeValues,
                activeColor: AppConstants.primaryColor,
                inactiveColor: AppConstants.txtFieldColor,
                min: 0,
                max: 100,
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      txt: "MIN",
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.subTxtColor,
                    ),
                    TextWidget(
                      txt: "MAX",
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.subTxtColor,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    TextWidget(
                      txt: "Condition",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        FilterContainer(containerText: "New"),
                        FilterContainer(containerText: "Used"),
                        FilterContainer(containerText: "Not Specified"),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextWidget(
                      txt: "Buying Format",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        FilterContainer(containerText: "All Listings"),
                        FilterContainer(containerText: "Accepts Offers"),
                        FilterContainer(containerText: "Auction"),
                        FilterContainer(containerText: "Buy It Now"),
                        FilterContainer(containerText: "Classified Ads"),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextWidget(
                      txt: "Item Location",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        FilterContainer(containerText: "US Only"),
                        FilterContainer(containerText: "North America"),
                        FilterContainer(containerText: "Europe"),
                        FilterContainer(containerText: "Asia"),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextWidget(
                      txt: "Show Only",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        FilterContainer(containerText: "Free Returns"),
                        FilterContainer(containerText: "Returns Accepted"),
                        FilterContainer(containerText: "Authorized Seller"),
                        FilterContainer(containerText: "Completed Items"),
                        FilterContainer(containerText: "Sold Items"),
                        FilterContainer(containerText: "Deals & Savings"),
                        FilterContainer(containerText: "Sale Items"),
                        FilterContainer(containerText: "Listed as Lots"),
                        FilterContainer(containerText: "Search in Description"),
                        FilterContainer(containerText: "Benefits charity"),
                        FilterContainer(containerText: "Authenticity Verified"),
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    ButtonWidget(buttonText: "Apply", onPressed: () {}),
                    SizedBox(
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
