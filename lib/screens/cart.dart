import 'package:e_commerce_proejct/screens/ship_to.dart';
import 'package:e_commerce_proejct/widgets/Text_form_field_widget.dart';
import 'package:e_commerce_proejct/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

import '../utils/app_constants.dart';
import '../widgets/Text_widget.dart';
import '../widgets/cart_container.dart';

class Cart extends StatelessWidget {
  Cart({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 26, left: 16, right: 16),
                  child: Column(
                    children: [
                      TextWidget(
                        txt: "Your Cart",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        textColor: AppConstants.titleTextColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Divider(
                  thickness: 1,
                  height: 0,
                  color: AppConstants.txtFieldColor,
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      CartContainer(
                          productName: "Nike Air Zoom Pegasus 36 Miami",
                          productImagePath: "assets/images/shoe4.png",
                          price: "\$299,43"),
                      SizedBox(
                        height: 16,
                      ),
                      CartContainer(
                          productName: "Nike Air Zoom Pegasus 36 Miami",
                          productImagePath: "assets/images/shoe2.png",
                          price: "\$299,43"),
                      SizedBox(
                        height: 32,
                      ),
                      TextFormFieldWidget(
                        hintText: "Enter Cupon Code",
                        isPasswordField: false,
                        validator: (val) {
                          if (val.isEmpty) {
                            return "* Your Cupon Is Not Correct ";
                          } else {
                            return null;
                          }
                          ;
                        },
                        suffix: ButtonWidget(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              return null;
                            }
                          },
                          buttonText: 'Apply',
                          width: 87,
                          height: 60,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.5, vertical: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border:
                                Border.all(color: AppConstants.txtFieldColor)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextWidget(
                                  txt: "Items (3)",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  textColor: AppConstants.subTxtColor,
                                ),
                                TextWidget(
                                  txt: "\$598.86",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  textColor: AppConstants.titleTextColor,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextWidget(
                                  txt: "Shipping",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  textColor: AppConstants.subTxtColor,
                                ),
                                TextWidget(
                                  txt: "\$40.00",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  textColor: AppConstants.titleTextColor,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextWidget(
                                  txt: "Import charges",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  textColor: AppConstants.subTxtColor,
                                ),
                                TextWidget(
                                  txt: "\$128.00",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  textColor: AppConstants.titleTextColor,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            DottedLine(
                              dashColor: AppConstants.txtFieldColor,
                              dashLength: 5,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextWidget(
                                  txt: "Total Price",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  textColor: AppConstants.titleTextColor,
                                ),
                                TextWidget(
                                  txt: "\$766.86",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  textColor: AppConstants.primaryColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      ButtonWidget(
                          buttonText: "Check Out",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ShipTo()));
                          }),
                      SizedBox(height: 16),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
