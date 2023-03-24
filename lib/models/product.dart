class Product {
  final String? id;
  final String name;
  final String description;
  final double price;

  Product({
    this.id,
    required this.name,
    required this.description,
    required this.price
});

  factory Product.fromJson(Map<String, dynamic>json, String id){
    return Product(
      name: json["name"] ?? "", 
      description: json["description"] ?? "", 
      price: json["price"] ?? ""
    );
  }
}