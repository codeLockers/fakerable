// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// FakerableGenerator
// **************************************************************************

part of 'model.dart';

Model _$ModelFakerable() {
  final Faker faker = Faker();
  return Model(
    age: faker.randomGenerator.integer(12, min: 7),
    score: faker.randomGenerator.decimal(scale: 2.0, min: 2.9),
    text: faker.randomGenerator.string(100, min: 10),
    age_copy: faker.randomGenerator.integer(10),
    score_copy: faker.randomGenerator.decimal(),
    text_copy: faker.randomGenerator.string(10),
    user: User.fakerable(),
    image: faker.image.image(),
    phone: faker.phoneNumber.us(),
    email: faker.internet.email(),
  );
}
