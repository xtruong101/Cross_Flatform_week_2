// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Student _$StudentFromJson(Map<String, dynamic> json) => Student(
  id: json['id'] as String,
  name: json['name'] as String,
  age: (json['age'] as num).toInt(),
  major: json['major'] as String,
  gpa: (json['gpa'] as num).toDouble(),
  address: Address.fromJson(json['address'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StudentToJson(Student instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'age': instance.age,
  'major': instance.major,
  'gpa': instance.gpa,
  'address': instance.address,
};
