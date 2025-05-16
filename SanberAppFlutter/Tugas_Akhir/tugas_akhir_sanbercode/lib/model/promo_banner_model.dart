class PromoBanner {
  final int id;
  final String name;
  final String image;

  PromoBanner({required this.id, required this.name, required this.image});

  factory PromoBanner.fromJson(Map<String, dynamic> json) {
    return PromoBanner(
      id: json['id'] ?? 0,
      name: json['promo_name'] ?? '',
      image: json['promo_image'] ?? '',
    );
  }
}
