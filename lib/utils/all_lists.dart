import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../models/product_display_model.dart';
import '../models/select_colors_model.dart';
import '../models/select_sizes_model.dart';

class AllLists {
  List<CategoryModel> categoriesList = [
    CategoryModel(
        imagePath: "assets/images/manshirt.png", categoryName: "Man Shirt"),
    CategoryModel(
        imagePath: "assets/images/womandress.png", categoryName: "Dress"),
    CategoryModel(
        imagePath: "assets/images/manbag.png",
        categoryName: "Man Work Equipment"),
    CategoryModel(
        imagePath: "assets/images/manpants.png", categoryName: "Man Pants"),
    CategoryModel(
        imagePath: "assets/images/mantshirt.png", categoryName: "Man T-Shirt"),
    CategoryModel(
        imagePath: "assets/images/womanbikini.png", categoryName: "Bikini"),
    CategoryModel(
        imagePath: "assets/images/womanbag.png", categoryName: "Woman Bag"),
    CategoryModel(
        imagePath: "assets/images/manshirt.png", categoryName: "Man Shirt"),
    CategoryModel(
        imagePath: "assets/images/womanshoes.png", categoryName: "High Heels"),
    CategoryModel(
        imagePath: "assets/images/womanpants.png", categoryName: "Woman Pants"),
    CategoryModel(
        imagePath: "assets/images/womandress.png", categoryName: "Dress"),
    CategoryModel(
        imagePath: "assets/images/womanbag.png", categoryName: "Woman Bag"),
    CategoryModel(
        imagePath: "assets/images/manshirt.png", categoryName: "Man Shirt"),
  ];
  List<CategoryModel> manFashionList = [
    CategoryModel(
        imagePath: "assets/images/manshirt.png", categoryName: "Man Shirt"),
    CategoryModel(
        imagePath: "assets/images/manbag.png",
        categoryName: "Man Work Equipment"),
    CategoryModel(
        imagePath: "assets/images/mantshirt.png", categoryName: "Man T-Shirt"),
    CategoryModel(
        imagePath: "assets/images/manshoes.png", categoryName: "Man Shoes"),
    CategoryModel(
        imagePath: "assets/images/womanskirt.png", categoryName: "Skirt"),
    CategoryModel(
        imagePath: "assets/images/manpants.png", categoryName: "Man Pants"),
  ];
  List<CategoryModel> womanFashionList = [
    CategoryModel(
        imagePath: "assets/images/womandress.png", categoryName: "Dress"),
    CategoryModel(
        imagePath: "assets/images/womantshirt.png",
        categoryName: "Woman T-Shirt"),
    CategoryModel(
        imagePath: "assets/images/womanpants.png", categoryName: "Woman Pants"),
    CategoryModel(
        imagePath: "assets/images/womanskirt.png", categoryName: "Skirt"),
    CategoryModel(
        imagePath: "assets/images/womanbag.png", categoryName: "Woman Bag"),
    CategoryModel(
        imagePath: "assets/images/womanshoes.png", categoryName: "High Heels"),
    CategoryModel(
        imagePath: "assets/images/womanbikini.png", categoryName: "Bikini"),
  ];
  List<ProductDisplayModel> flashSaleList = [
    ProductDisplayModel(
        imagePath: "assets/images/shoe1.png",
        productName: "FS - Nike Air\nMax 270 React...",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
    ProductDisplayModel(
        imagePath: "assets/images/purse1.png",
        productName: "FS - QUILTED\nMAXI CROS...",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
    ProductDisplayModel(
        imagePath: "assets/images/shoe2.png",
        productName: "Nike Air Max 270\nReact ENG",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
  ];
  List<ProductDisplayModel> megaSaleList = [
    ProductDisplayModel(
        imagePath: "assets/images/purse2.png",
        productName: "FS - QUILTED\nMAXI CROS...",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
    ProductDisplayModel(
        imagePath: "assets/images/shoe3.png",
        productName: "FS - Nike Air\nMax 270 React...",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
    ProductDisplayModel(
        imagePath: "assets/images/purse3.png",
        productName: "Nike Air Max 270\nReact ENG",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
    ProductDisplayModel(
        imagePath: "assets/images/shoe2.png",
        productName: "Nike Air Max 270\nReact ENG",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
  ];
  List<ProductDisplayModel> recomendedProductList = [
    ProductDisplayModel(
        imagePath: "assets/images/shoe4.png",
        productName: "FS - QUILTED\nMAXI CROS...",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
    ProductDisplayModel(
        imagePath: "assets/images/shoe3.png",
        productName: "FS - Nike Air\nMax 270 React...",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
    ProductDisplayModel(
        imagePath: "assets/images/purse3.png",
        productName: "Nike Air Max 270\nReact ENG",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
    ProductDisplayModel(
        imagePath: "assets/images/shoe2.png",
        productName: "Nike Air Max 270\nReact ENG",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
    ProductDisplayModel(
        imagePath: "assets/images/shoe2.png",
        productName: "Nike Air Max 270\nReact ENG",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
    ProductDisplayModel(
        imagePath: "assets/images/shoe2.png",
        productName: "Nike Air Max 270\nReact ENG",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
  ];
  List<ProductDisplayModel> resultProductList = [
    // ProductDisplayModel(
    //     imagePath: "assets/images/shoe4.png",
    //     productName: "FS - QUILTED\nMAXI CROS...",
    //     newPrice: "\$299,43",
    //     oldPrice: "\$534,33",
    //     discount: "24% Off"),
    // ProductDisplayModel(
    //     imagePath: "assets/images/shoe3.png",
    //     productName: "FS - Nike Air\nMax 270 React...",
    //     newPrice: "\$299,43",
    //     oldPrice: "\$534,33",
    //     discount: "24% Off"),
    // ProductDisplayModel(
    //     imagePath: "assets/images/purse3.png",
    //     productName: "Nike Air Max 270\nReact ENG",
    //     newPrice: "\$299,43",
    //     oldPrice: "\$534,33",
    //     discount: "24% Off"),
    // ProductDisplayModel(
    //     imagePath: "assets/images/shoe2.png",
    //     productName: "Nike Air Max 270\nReact ENG",
    //     newPrice: "\$299,43",
    //     oldPrice: "\$534,33",
    //     discount: "24% Off"),
    // ProductDisplayModel(
    //     imagePath: "assets/images/shoe2.png",
    //     productName: "Nike Air Max 270\nReact ENG",
    //     newPrice: "\$299,43",
    //     oldPrice: "\$534,33",
    //     discount: "24% Off"),
    // ProductDisplayModel(
    //     imagePath: "assets/images/shoe2.png",
    //     productName: "Nike Air Max 270\nReact ENG",
    //     newPrice: "\$299,43",
    //     oldPrice: "\$534,33",
    //     discount: "24% Off"),
  ];
  List<ProductDisplayModel> resultProductListFull = [
    ProductDisplayModel(
        imagePath: "assets/images/shoe4.png",
        productName: "FS - QUILTED\nMAXI CROS...",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
    ProductDisplayModel(
        imagePath: "assets/images/shoe3.png",
        productName: "FS - Nike Air\nMax 270 React...",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
    ProductDisplayModel(
        imagePath: "assets/images/purse3.png",
        productName: "Nike Air Max 270\nReact ENG",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
    ProductDisplayModel(
        imagePath: "assets/images/shoe2.png",
        productName: "Nike Air Max 270\nReact ENG",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
    ProductDisplayModel(
        imagePath: "assets/images/shoe2.png",
        productName: "Nike Air Max 270\nReact ENG",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
    ProductDisplayModel(
        imagePath: "assets/images/shoe2.png",
        productName: "Nike Air Max 270\nReact ENG",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
  ];
  List<ProductDisplayModel> favouriteProductsList = [
    ProductDisplayModel(
        imagePath: "assets/images/purse2.png",
        productName: "FS - QUILTED\nMAXI CROS...",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
    ProductDisplayModel(
        imagePath: "assets/images/shoe3.png",
        productName: "FS - Nike Air\nMax 270 React...",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
    ProductDisplayModel(
        imagePath: "assets/images/shoe1.png",
        productName: "Nike Air Max 270\nReact ENG",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
    ProductDisplayModel(
        imagePath: "assets/images/purse1.png",
        productName: "Nike Air Max 270\nReact ENG",
        newPrice: "\$299,43",
        oldPrice: "\$534,33",
        discount: "24% Off"),
  ];

  List<SelectSizesModel> sizesList = [
    SelectSizesModel(size: "6", isSelected: false),
    SelectSizesModel(size: "6.5", isSelected: false),
    SelectSizesModel(size: "7", isSelected: true),
    SelectSizesModel(size: "7.5", isSelected: false),
    SelectSizesModel(size: "8", isSelected: false),
    SelectSizesModel(size: "8.5", isSelected: false),
    SelectSizesModel(size: "9", isSelected: false),
    SelectSizesModel(size: "9.5", isSelected: false),
  ];
  List<SelectColorsModel> colorsList = [
    SelectColorsModel(color: const Color(0xffFFC833), isSelected: true),
    SelectColorsModel(color: const Color(0xff40BFFF), isSelected: false),
    SelectColorsModel(color: const Color(0xffFB7181), isSelected: false),
    SelectColorsModel(color: const Color(0xff53D1B6), isSelected: false),
    SelectColorsModel(color: const Color(0xff5C61F4), isSelected: false),
    SelectColorsModel(color: const Color(0xff223263), isSelected: false),
    SelectColorsModel(color: Colors.blueGrey, isSelected: false),
    SelectColorsModel(color: Colors.indigoAccent, isSelected: false),
  ];
  List<String> productImagesList = [
    "assets/images/productimage2.png",
    "assets/images/productimage3.png",
    "assets/images/productimage4.png",
  ];
  List<String> searchList = [
    "Nike Air Max 270 React ENG ",
    "Nike Air Vapormax 360",
    "Nike Air Max 270 React",
    "Nike Air VaporMax Flyknit 3",
    "Nike Air Max 97 Utility",
  ];
  List<String> sortByList = [
    "Time: ending soonest",
    "Time: newly listed",
    "Price + Shipping: lowest first",
    "Price + Shipping: highest first",
    "Distance: nearest first",
  ];
}
