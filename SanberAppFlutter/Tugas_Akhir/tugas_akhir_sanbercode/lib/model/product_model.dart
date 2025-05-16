class ProductApotik {
  final int id;
  final String name;
  final String unittype;
  final String description;
  final int price;
  final String image;
  final bool isPromo;

  ProductApotik({
    required this.id,
    required this.name,
    required this.unittype,
    required this.description,
    required this.price,
    required this.image,
    required this.isPromo,
  });

  factory ProductApotik.fromJson(Map<String, dynamic> json) {
    return ProductApotik(
      id: json['id'] ?? 0,
      name: json['product_name'] ?? '',
      description: json['product_description'] ?? '',
      unittype: json['unit_type'] ?? '',
      price: json['product_price'] ?? 0,
      image: json['product_image'] ?? '',
      isPromo: json['isPromo'] ?? false,
    );
  }
}
