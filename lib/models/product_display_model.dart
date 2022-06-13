class ProductDisplayModel {
  final String imagePath;
  final String productName;
  final String newPrice;
  final String oldPrice;
  final String discount;

  ProductDisplayModel(
      {required this.imagePath,
      required this.productName,
      required this.newPrice,
      required this.oldPrice,
      required this.discount});
}
