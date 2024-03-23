// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductModel {
  String title;
  String description;
  num price;
  String thumbnail;
  ProductModel({
    required this.title,
    required this.description,
    required this.price,
    required this.thumbnail,
  });

  ProductModel copyWith({
    String? title,
    String? description,
    num? price,
    String? thumbnail,
  }) {
    return ProductModel(
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      thumbnail: thumbnail ?? this.thumbnail,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'price': price,
      'thumbnail': thumbnail,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      title: map['title'] as String,
      description: map['description'] as String,
      price: map['price'] as num,
      thumbnail: map['thumbnail'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(title: $title, description: $description, price: $price, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.description == description &&
      other.price == price &&
      other.thumbnail == thumbnail;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      description.hashCode ^
      price.hashCode ^
      thumbnail.hashCode;
  }
}
