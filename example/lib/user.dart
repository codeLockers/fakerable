import 'package:fakerable_annotations/fakerable_annotations.dart';
import 'package:faker/faker.dart';

part 'user.fakerable.g.dart';

@fakerable
class User {
  final int sex;
  final double height;
  final String address;

  const User({required this.sex, required this.height, required this.address});

  factory User.fakerable() => _$UserFakerable();
}
