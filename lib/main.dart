import 'package:e_commerce_proejct/all_screens.dart';
import 'package:e_commerce_proejct/screens/auth_screens/login.dart';
import 'package:e_commerce_proejct/screens/auth_screens/splash_screen.dart';
import 'package:e_commerce_proejct/screens/favorite_product.dart';
import 'package:e_commerce_proejct/screens/filter.dart';
import 'package:e_commerce_proejct/screens/home.dart';
import 'package:e_commerce_proejct/screens/list_category.dart';
import 'package:e_commerce_proejct/screens/product_detail.dart';
import 'package:e_commerce_proejct/screens/review_product.dart';
import 'package:e_commerce_proejct/screens/ship_to.dart';
import 'package:e_commerce_proejct/screens/write_review.dart';
import 'package:e_commerce_proejct/utils/app_constants.dart';
import 'package:e_commerce_proejct/widgets/button_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigation(),
    );
  }
}
