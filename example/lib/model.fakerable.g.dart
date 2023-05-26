// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// FakerableGenerator
// **************************************************************************

part of 'model.dart';

Model _$ModelFakerable() {
  final Faker faker = Faker();
  return Model(
    age: faker.randomGenerator.integer(5, min: 0),
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
    text: faker.randomGenerator.string(5, min: 0),
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
      faker.randomGenerator.string(5, min: 0),
      faker.randomGenerator.string(5, min: 0),
    ],
    listBool: [
      faker.randomGenerator.boolean(),
      faker.randomGenerator.boolean(),
      faker.randomGenerator.boolean(),
    ],
    listUser: [
      User.fakerable(),
      User.fakerable(),
      User.fakerable(),
      User.fakerable(),
    ],
    listsInt: [
      [],
      [
        faker.randomGenerator.integer(5, min: 0),
      ],
      [],
    ],
    listsDouble: [],
    listsString: [
      [
        faker.randomGenerator.string(5, min: 0),
        faker.randomGenerator.string(5, min: 0),
      ],
    ],
    listsBool: [
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
      ],
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
        User.fakerable(),
      ],
    ],
    listMapStringString: [
      {
        faker.randomGenerator.string(5, min: 0):
            faker.randomGenerator.string(5, min: 0),
      },
    ],
    mapStringString: {
      faker.randomGenerator.string(5, min: 0):
          faker.randomGenerator.string(5, min: 0),
      faker.randomGenerator.string(5, min: 0):
          faker.randomGenerator.string(5, min: 0),
      faker.randomGenerator.string(5, min: 0):
          faker.randomGenerator.string(5, min: 0),
    },
    mapDoubleDouble: {
      faker.randomGenerator.decimal(): faker.randomGenerator.decimal(),
    },
    mapBoolBool: {
      faker.randomGenerator.boolean(): faker.randomGenerator.boolean(),
      faker.randomGenerator.boolean(): faker.randomGenerator.boolean(),
    },
    mapIntInt: {
      faker.randomGenerator.integer(5, min: 0):
          faker.randomGenerator.integer(5, min: 0),
      faker.randomGenerator.integer(5, min: 0):
          faker.randomGenerator.integer(5, min: 0),
      faker.randomGenerator.integer(5, min: 0):
          faker.randomGenerator.integer(5, min: 0),
      faker.randomGenerator.integer(5, min: 0):
          faker.randomGenerator.integer(5, min: 0),
    },
    mapUserUser: {
      User.fakerable(): User.fakerable(),
      User.fakerable(): User.fakerable(),
      User.fakerable(): User.fakerable(),
      User.fakerable(): User.fakerable(),
      User.fakerable(): User.fakerable(),
    },
    mapListStringListString: {},
    mapListsIntListsInt: {
      [
        faker.randomGenerator.integer(5, min: 0),
      ]: [
        faker.randomGenerator.integer(5, min: 0),
      ],
    },
    mapMapStringStringMapBoolBool: {
      {
        faker.randomGenerator.string(5, min: 0):
            faker.randomGenerator.string(5, min: 0),
      }: {
        faker.randomGenerator.boolean(): faker.randomGenerator.boolean(),
      },
    },
    intNullable1: faker.randomGenerator.integer(5, min: 0),
    intNullable2: faker.randomGenerator.integer(15, min: 10),
    intNullable3: faker.randomGenerator.integer(5, min: 0),
    intNullable4: null,
    doubleNullable1: faker.randomGenerator.decimal(),
    doubleNullable2: null,
    doubleNullable3: null,
    doubleNullable4: null,
    boolNullable1: null,
    boolNullable2: faker.randomGenerator.boolean(),
    boolNullable3: null,
    boolNullable4: null,
    stringNullable1: null,
    stringNullable2: null,
    stringNullable3: null,
    stringNullable4: null,
    userNullable1: null,
    userNullable2: null,
    intListNullable1: null,
    intListNullable2: [
      null,
      null,
    ],
    intListNullable3: [
      null,
    ],
    doubleListNullable1: [
      faker.randomGenerator.decimal(),
      faker.randomGenerator.decimal(),
      null,
    ],
    doubleListNullable2: [
      faker.randomGenerator.decimal(),
      null,
    ],
    doubleListNullable3: [
      null,
      null,
      faker.randomGenerator.decimal(),
    ],
    stringListNullable1: [
      null,
      faker.randomGenerator.string(5, min: 0),
      null,
      faker.randomGenerator.string(5, min: 0),
    ],
    stringListNullable2: null,
    stringListNullable3: null,
    userListNullable1: null,
    userListNullable2: null,
    userListNullable3: [
      null,
      User.fakerable(),
    ],
    intListsNullable1: null,
    doubleListsNullable2: null,
    stringListsNullable3: null,
    mapIntDoubleListNullable1: null,
    mapStringBoolListNullable2: null,
    mapIntIntListStringListNullable3: [
      null,
      null,
    ],
  );
}
