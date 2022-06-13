import 'package:e_commerce_proejct/screens/payment_method.dart';
import 'package:e_commerce_proejct/widgets/button_widget.dart';
import 'package:e_commerce_proejct/widgets/shipping_detail_container.dart';
import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import '../widgets/Text_widget.dart';

class ShipTo extends StatelessWidget {
  const ShipTo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 26, left: 16, right: 16),
            child: Column(
              children: [
                Row(
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
                      txt: "Ship To",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      textColor: AppConstants.titleTextColor,
                    )),
                    Icon(
                      Icons.add,
                      color: AppConstants.primaryColor,
                      size: 24,
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
                ShippingDetailContainer(
                  userName: "Priscekila",
                  phoneNumber: '+99 1234567890',
                  address:
                      '3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States',
                ),
                const SizedBox(
                  height: 16,
                ),
                ShippingDetailContainer(
                  userName: "Ahmad Khaidir",
                  phoneNumber: '+99 1234567890',
                  address:
                      '3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States',
                ),
                const SizedBox(
                  height: 61,
                ),
                ButtonWidget(buttonText: 'Next', onPressed: () { Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentMethod())); },),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
