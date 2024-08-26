class Pizza {
  final int id;
  final String pizzaName;
  final String descirption;
  final double price;
  final String imageUrl;

  Pizza.fromJson(Map<String, dynamic> json)
  : id = json['id'],
  pizzaName = json["pizzaName"],
  descirption = json["description"],
  price = json["price"],
  imageUrl = json['imageUrl'];

}