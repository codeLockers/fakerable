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
    text: faker.randomGenerator.string(20, min: 0),
    textRange: faker.randomGenerator.string(15, min: 2),
    textValue: 'wiredcraft',
    textValueRange: 'wiredcraft2',
    textValueSpecialEmail: faker.internet.email(),
    textValueSpecialImage: faker.image.image(),
    textValueSpecialPhone: faker.phoneNumber.us(),
    listInt: [],
    listDouble: [
      faker.randomGenerator.decimal(),
    ],
    listString: [
      faker.randomGenerator.string(20, min: 0),
      faker.randomGenerator.string(20, min: 0),
    ],
    listBool: [
      faker.randomGenerator.boolean(),
      faker.randomGenerator.boolean(),
    ],
    listUser: [
      User.fakerable(),
      User.fakerable(),
      User.fakerable(),
    ],
    listsInt: [
      [],
      [
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
      ],
      [
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
      ],
      [
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
      ],
      [
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
      ],
      [
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
        faker.randomGenerator.integer(100, min: 0),
      ],
    ],
    listsDouble: [
      [],
    ],
    listsString: [
      [
        faker.randomGenerator.string(20, min: 0),
        faker.randomGenerator.string(20, min: 0),
      ],
    ],
    listsBool: [
      [
        faker.randomGenerator.boolean(),
        faker.randomGenerator.boolean(),
      ],
      [
        faker.randomGenerator.boolean(),
        faker.randomGenerator.boolean(),
        faker.randomGenerator.boolean(),
      ],
      [
        faker.randomGenerator.boolean(),
        faker.randomGenerator.boolean(),
        faker.randomGenerator.boolean(),
      ],
    ],
    listsUser: [
      [
        User.fakerable(),
        User.fakerable(),
        User.fakerable(),
        User.fakerable(),
      ],
      [
        User.fakerable(),
        User.fakerable(),
        User.fakerable(),
      ],
      [
        User.fakerable(),
        User.fakerable(),
        User.fakerable(),
        User.fakerable(),
      ],
    ],
  );
}
