import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import 'Text_widget.dart';

class CategoryContainer extends StatelessWidget {
  final String imagePath;
  final String categoryName;

  const CategoryContainer(
      {Key? key, required this.imagePath, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 12),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imagePath), scale: 3),
                shape: BoxShape.circle,
                border: Border.all(color: AppConstants.txtFieldColor)),
          ),
          const SizedBox(
            height: 8,
          ),
          TextWidget(
              txt: categoryName,
              fontSize: 10,
              align: TextAlign.center,
              fontWeight: FontWeight.w400,
              textColor: AppConstants.subTxtColor)
        ],
      ),
    );
  }
}
