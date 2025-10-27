import 'package:json_annotation/json_annotation.dart';

part 'book.g.dart'; // File sẽ được generate

@JsonSerializable() // ← ANNOTATION QUAN TRỌNG
class Book {
  final String id;
  final String title;
  final String author;
  
  @JsonKey(name: 'publish_year') // Custom JSON key
  final int publishYear;
  
  final double rating;
  final List<String> categories; // Array
  final bool isAvailable;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.publishYear,
    required this.rating,
    required this.categories,
    required this.isAvailable,
  });

  // Phương thức từ generated code
  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
  Map<String, dynamic> toJson() => _$BookToJson(this);
}