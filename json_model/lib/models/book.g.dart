// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) => Book(
  id: json['id'] as String,
  title: json['title'] as String,
  author: json['author'] as String,
  publishYear: (json['publish_year'] as num).toInt(),
  rating: (json['rating'] as num).toDouble(),
  categories: (json['categories'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  isAvailable: json['isAvailable'] as bool,
);

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'author': instance.author,
  'publish_year': instance.publishYear,
  'rating': instance.rating,
  'categories': instance.categories,
  'isAvailable': instance.isAvailable,
};
