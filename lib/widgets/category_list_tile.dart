import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import 'Text_widget.dart';
class CategoryListTile extends StatefulWidget {
final String imagePath;
final String categoryName;

CategoryListTile({required this.imagePath, required this.categoryName});

  @override
  State<CategoryListTile> createState() => _CategoryListTileState();
}

class _CategoryListTileState extends State<CategoryListTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppConstants.txtFieldColor.withOpacity(0.5),
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 16, vertical: 19),
        child: Row(
          children: [
            Image.asset(
             widget.imagePath,
              height: 20,
              width: 20,
            ),
            const SizedBox(
              width: 19,
            ),
            TextWidget(
              txt: widget.categoryName,
              fontSize: 12,
              fontWeight: FontWeight.w700,
              textColor: isSelected
                  ? AppConstants.primaryColor
                  : AppConstants.titleTextColor,
            ),
          ],
        ),
      ),
    );
  }
}
