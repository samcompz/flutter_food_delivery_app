class Restaurant {
  final String id;
  final String name;
  // final String imageUrl;
  final String address;

  Restaurant({
    required this.id,
    required this.name,
    // required this.imageUrl,
    required this.address,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      id: json['id'],
      name: json['name'],
      // imageUrl: json['imageUrl'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      // 'imageUrl': imageUrl,
      'address': address,
    };
  }
}