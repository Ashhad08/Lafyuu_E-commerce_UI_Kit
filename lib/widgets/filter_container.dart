import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import 'Text_widget.dart';

class FilterContainer extends StatefulWidget {
  final String containerText;

  const FilterContainer({super.key, required this.containerText});

  @override
  State<FilterContainer> createState() => _FilterContainerState();
}

class _FilterContainerState extends State<FilterContainer> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppConstants.primaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5)),
              child: TextWidget(
                txt: widget.containerText,
                fontSize: 12,
                fontWeight: FontWeight.w700,
                textColor: AppConstants.primaryColor,
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppConstants.txtFieldColor),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: TextWidget(
                  txt: widget.containerText,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  textColor: AppConstants.subTxtColor,
                ),
              ),
            ),
          );
  }
}
