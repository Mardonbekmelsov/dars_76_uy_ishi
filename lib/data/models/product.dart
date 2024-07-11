import 'dart:io';

class Product {
  final String id;
  String title;
  File imageFile;
  bool isFavorite;
  Product({
    required this.id,
    required this.title,
    required this.imageFile,
    this.isFavorite = false,
  });
}
