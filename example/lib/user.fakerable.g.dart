// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// FakerableGenerator
// **************************************************************************

part of 'user.dart';

User _$UserFakerable() {
  final Faker faker = Faker();
  return User(
    sex: faker.randomGenerator.integer(0, min: 100),
    height: faker.randomGenerator.decimal(),
    address: faker.randomGenerator.string(20, min: 0),
  );
}
