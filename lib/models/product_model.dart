class ProductModel {
  final String image;
  final int id;
  final String title;
  final String description;
  final double currentPrice;
  final double previousPrice;
  final double rating;
  final int discount;
  final bool isFavorite;

  ProductModel(
      {required this.title,
      required this.description,
      required this.currentPrice,
      required this.previousPrice,
      required this.rating,
      required this.discount,
      required this.isFavorite,
      required this.image,
      required this.id});
}
