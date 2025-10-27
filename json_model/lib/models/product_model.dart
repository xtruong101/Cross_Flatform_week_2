class Product{
  final String id;
  final String name;
  final String type;
  double price;
  bool inStock;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.type,
    required this.inStock,
  });
  
  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'name': name,
      'price': price,
      'type': type,
      'inStock': inStock,
    };
  }
  
  factory Product.fromJson(Map<String, dynamic> json){
    return Product(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      type: json['type'],
      inStock: json['inStock'],
    );
  }
}