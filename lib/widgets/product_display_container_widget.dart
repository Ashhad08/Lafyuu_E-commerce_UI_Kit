import 'package:e_commerce_proejct/screens/product_detail.dart';
import 'package:e_commerce_proejct/widgets/four_ratings_widget.dart';
import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import 'Text_widget.dart';

class ProductDisplayContainer extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String newPrice;
  final String oldPrice;
  final String discount;
  final bool? addRating;
  final bool? addDeleteButton;
  final double margin;

  const ProductDisplayContainer(
      {Key? key,
      required this.imagePath,
      required this.productName,
      required this.newPrice,
      required this.oldPrice,
      required this.discount,
      this.addRating = false,
      this.addDeleteButton = false,
      required this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetail()));
      },
      child: Container(
        margin: EdgeInsets.only(right: margin),
        decoration: BoxDecoration(
            border: Border.all(color: AppConstants.txtFieldColor),
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imagePath, height: 109, width: 118),
              const SizedBox(
                height: 8,
              ),
              TextWidget(
                txt: productName,
                fontSize: 12,
                fontWeight: FontWeight.w700,
                textColor: AppConstants.titleTextColor,
              ),
              _addRatingWidget(addRating!),
              TextWidget(
                txt: newPrice,
                fontSize: 12,
                fontWeight: FontWeight.w700,
                textColor: AppConstants.primaryColor,
              ),
              Row(
                children: [
                  TextWidget(
                    txt: oldPrice,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    textColor: AppConstants.subTxtColor,
                    decoration: TextDecoration.lineThrough,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  TextWidget(
                      txt: discount,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.redColor),
                  _addDeleteButton(addDeleteButton!),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _addRatingWidget(bool val) {
    if (val == true) {
      return Column(
        children: const [
          SizedBox(
            height: 4,
          ),
          FourRating(),
          SizedBox(
            height: 16,
          )
        ],
      );
    } else {
      return const SizedBox(
        height: 8,
      );
    }
  }

  Widget _addDeleteButton(bool val) {
    if (val == true) {
      return const Icon(
        Icons.delete_outline,
        size: 20,
        color: AppConstants.subTxtColor,
      );
    } else {
      return const SizedBox(
        width: 0,
      );
    }
  }
}
