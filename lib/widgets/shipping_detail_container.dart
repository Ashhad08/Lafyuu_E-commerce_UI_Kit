import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import 'Text_widget.dart';
import 'button_widget.dart';

class ShippingDetailContainer extends StatefulWidget {
  final String userName;
  final String address;
  final String phoneNumber;

  ShippingDetailContainer(
      {required this.userName,
      required this.address,
      required this.phoneNumber});

  @override
  State<ShippingDetailContainer> createState() =>
      _ShippingDetailContainerState();
}

class _ShippingDetailContainerState extends State<ShippingDetailContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          border: Border.all(
              color: isSelected
                  ? AppConstants.primaryColor
                  : AppConstants.txtFieldColor),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              txt: widget.userName,
              fontSize: 14,
              fontWeight: FontWeight.w700,
              textColor: AppConstants.titleTextColor,
            ),
            SizedBox(
              height: 16,
            ),
            TextWidget(
              txt:
                widget.address,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              textColor: AppConstants.subTxtColor,
            ),
            SizedBox(
              height: 16,
            ),
            TextWidget(
              txt: widget.phoneNumber,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              textColor: AppConstants.subTxtColor,
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                ButtonWidget(
                  buttonText: "Edit",
                  onPressed: () {},
                  width: 77,
                ),
                SizedBox(
                  width: 24,
                ),
                Icon(
                  Icons.delete_outline,
                  color: AppConstants.subTxtColor,
                  size: 24,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
