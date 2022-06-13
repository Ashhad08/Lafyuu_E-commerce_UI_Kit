import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import 'Text_widget.dart';

class CartContainer extends StatefulWidget {
  final String productName;
  final String productImagePath;
  final String price;

  CartContainer(
      {required this.productName,
      required this.productImagePath,
      required this.price});

  @override
  State<CartContainer> createState() => _CartContainerState();
}

class _CartContainerState extends State<CartContainer> {
  bool isFavorite = false;
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 107,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppConstants.txtFieldColor)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            widget.productImagePath,
            height: 72,
            width: 72,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 142,
                    child: TextWidget(
                      txt: widget.productName,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                          child: isFavorite
                              ? Icon(
                                  Icons.favorite,
                                  color: AppConstants.lightRedColor,
                                  size: 24,
                                )
                              : Icon(
                                  Icons.favorite_border,
                                  color: AppConstants.subTxtColor,
                                  size: 24,
                                )),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.delete_outline,
                        color: AppConstants.subTxtColor,
                        size: 24,
                      ),
                    ],
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    txt: widget.price,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    textColor: AppConstants.primaryColor,
                  ),
                  Row(
                    children: [
                      InkWell(
                        splashColor:
                            AppConstants.txtFieldColor.withOpacity(0.5),
                        onTap: () {
                          if (quantity > 0) {
                            setState(() {
                              quantity = quantity - 1;
                            });
                          } else {
                            null;
                          }
                        },
                        child: Container(
                          child: Icon(
                            Icons.remove,
                            color: AppConstants.subTxtColor,
                            size: 16,
                          ),
                          height: 24,
                          width: 32,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              ),
                              border: Border.all(
                                  color: AppConstants.txtFieldColor)),
                        ),
                      ),
                      Container(
                        child: TextWidget(
                          txt: "$quantity",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          textColor: AppConstants.subTxtColor,
                        ),
                        height: 24,
                        width: 32,
                        alignment: Alignment.center,
                        decoration:
                            BoxDecoration(color: AppConstants.txtFieldColor
                                //border: Border.all(color: Color(0xffEBF0FF))
                                ),
                      ),
                      InkWell(
                        splashColor:
                            AppConstants.txtFieldColor.withOpacity(0.5),
                        onTap: () {
                          setState(() {
                            quantity = quantity + 1;
                          });
                        },
                        child: Container(
                          child: Icon(
                            Icons.add,
                            color: AppConstants.subTxtColor,
                            size: 16,
                          ),
                          height: 24,
                          width: 32,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                              border: Border.all(
                                  color: AppConstants.txtFieldColor)),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
