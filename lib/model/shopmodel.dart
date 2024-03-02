import 'dart:convert';

List<ShopModel> shopModelFromJson(String str) =>
    List<ShopModel>.from(json.decode(str).map((x) => ShopModel.fromJson(x)));

String shopModelToJson(List<ShopModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ShopModel {
  final String item;
  final String description;
  final String image;
  final String price;
  final String id;

  ShopModel({
    required this.item,
    required this.description,
    required this.image,
    required this.price,
    required this.id,
  });

  factory ShopModel.fromJson(Map<String, dynamic> json) => ShopModel(
        item: json["item"],
        description: json["description"],
        image: json["image"],
        price: json["price"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "item": item,
        "description": description,
        "image": image,
        "price": price,
        "id": id,
      };
}
