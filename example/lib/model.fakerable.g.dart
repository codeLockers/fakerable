// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// FakerableGenerator
// **************************************************************************

part of 'model.dart';

Model _$ModelFakerable() {
  final Faker faker = Faker();
  return Model(
    age: faker.randomGenerator.integer(100, min: 0),
    ageRange: faker.randomGenerator.integer(19, min: 6),
    ageValue: 77,
    ageValueRange: 66,
    score: faker.randomGenerator.decimal(),
    scoreRange:
        faker.randomGenerator.decimal(scale: 6.500000000000001, min: 3.3),
    scoreValue: 10.4,
    scoreValueRange: 0.4,
    isOk: faker.randomGenerator.boolean(),
    isOkValue: false,
    user: User.fakerable(),
  );
}
