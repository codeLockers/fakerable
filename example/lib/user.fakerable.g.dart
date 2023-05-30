// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// FakerableGenerator
// **************************************************************************

part of 'user.dart';

User _$UserFakerable() {
  final Faker faker = Faker();
  return User(
    sex: faker.randomGenerator.integer(5, min: 0),
    height: faker.randomGenerator.decimal(),
    address: faker.randomGenerator.string(5, min: 0),
    location: Location.fakerable(),
    locations: [
      Location.fakerable(),
      Location.fakerable(),
    ],
    mapLocation: {
      Location.fakerable(): Location.fakerable(),
      Location.fakerable(): Location.fakerable(),
    },
  );
}

Location _$LocationFakerable() {
  final Faker faker = Faker();
  final index = faker.randomGenerator.integer(4, min: 0);
  return Location.values[index];
}
