// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    int id;
    String name;
    String category;
    String thumbnail;
    int price;
    String description;
    bool isFeatured;
    String? user;
    int? userId;

    ProductEntry({
        required this.id,
        required this.name,
        required this.category,
        required this.thumbnail,
        required this.price,
        required this.description,
        required this.isFeatured,
        required this.user,
        required this.userId,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        id: json["id"],
        name: json["name"],
        category: json["category"],
        thumbnail: json["thumbnail"],
        price: json["price"],
        description: json["description"],
        isFeatured: json["is_featured"],
        user: json["user"],
        userId: json["user_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "category": category,
        "thumbnail": thumbnail,
        "price": price,
        "description": description,
        "is_featured": isFeatured,
        "user": user,
        "user_id": userId,
    };
}
