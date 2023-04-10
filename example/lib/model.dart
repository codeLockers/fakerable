import 'package:example/user.dart';
import 'package:faker/faker.dart';

import 'package:fakerable_annotations/fakerable_annotations.dart';
part 'model.fakerable.g.dart';

@fakeable
class Model {
  @FakerableInt(12, min: 7)
  final int age;

  @FakerableDouble(2, 2.9)
  final double score;

  @FakerableString(100, min: 10)
  final String text;

  final int age_copy;
  final double score_copy;
  final String text_copy;

  @fakerableInline
  final User user;

  @FakerableValue(FakerableValueType.image)
  final String image;
  @FakerableValue(FakerableValueType.phone)
  final String phone;
  @FakerableValue(FakerableValueType.email)
  final String email;

  const Model(
      {required this.age,
      required this.score,
      required this.text,
      required this.age_copy,
      required this.score_copy,
      required this.text_copy,
      required this.user,
      required this.image,
      required this.phone,
      required this.email});
  factory Model.fakerable() => _$ModelFakerable();
}
