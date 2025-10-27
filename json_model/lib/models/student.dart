import 'package:json_annotation/json_annotation.dart';
import 'address.dart';

part 'student.g.dart';

@JsonSerializable()
class Student {
  final String id;
  final String name;
  String major;
  int age;
  double gpa;
  Address address; 

  Student({
    required this.id, required this.name, required this.age,
    required this.major, required this.gpa,
    required this.address,
  });

  factory Student.fromJson(Map<String, dynamic> json) => _$StudentFromJson(json);
  Map<String, dynamic> toJson() => _$StudentToJson(this);
}