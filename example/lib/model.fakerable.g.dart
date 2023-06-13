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
    listDouble: [],
    listString: [
      faker.randomGenerator.string(5, min: 0),
      faker.randomGenerator.string(5, min: 0),
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
      [
        faker.randomGenerator.integer(5, min: 0),
        faker.randomGenerator.integer(5, min: 0),
        faker.randomGenerator.integer(5, min: 0),
      ],
    ],
    listsDouble: [
      [
        faker.randomGenerator.decimal(),
      ],
    ],
    listsString: [
      [
        faker.randomGenerator.string(5, min: 0),
        faker.randomGenerator.string(5, min: 0),
      ],
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
      ],
      [
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
    mapStringString: {},
    mapDoubleDouble: {},
    mapBoolBool: {
      faker.randomGenerator.boolean(): faker.randomGenerator.boolean(),
    },
    mapIntInt: {
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
    intNullable1: null,
    intNullable2: faker.randomGenerator.integer(15, min: 10),
    intNullable3: null,
    intNullable4: null,
    doubleNullable1: faker.randomGenerator.decimal(),
    doubleNullable2: null,
    doubleNullable3: faker.randomGenerator.decimal(),
    doubleNullable4: null,
    boolNullable1: faker.randomGenerator.boolean(),
    boolNullable2: faker.randomGenerator.boolean(),
    boolNullable3: faker.randomGenerator.boolean(),
    boolNullable4: null,
    stringNullable1: faker.randomGenerator.string(5, min: 0),
    stringNullable2: faker.randomGenerator.string(6, min: 3),
    stringNullable3: null,
    stringNullable4: null,
    userNullable1: User.fakerable(),
    userNullable2: null,
    intListNullable1: null,
    intListNullable2: [
      null,
      null,
      null,
    ],
    intListNullable3: null,
    doubleListNullable1: null,
    doubleListNullable2: [
      null,
      faker.randomGenerator.decimal(),
    ],
    doubleListNullable3: null,
    stringListNullable1: null,
    stringListNullable2: [
      null,
      faker.randomGenerator.string(5, min: 0),
    ],
    stringListNullable3: null,
    userListNullable1: null,
    userListNullable2: null,
    userListNullable3: null,
    intListsNullable1: null,
    doubleListsNullable2: [
      null,
      null,
      null,
    ],
    stringListsNullable3: null,
    mapIntDoubleListNullable1: [
      null,
    ],
    mapStringBoolListNullable2: [
      null,
      null,
      {
        null: null,
        faker.randomGenerator.string(5, min: 0): null,
        null: null,
      },
    ],
    mapIntIntListStringListNullable3: [
      {},
      {
        {
          null: null,
          faker.randomGenerator.integer(5, min: 0): null,
          faker.randomGenerator.integer(5, min: 0):
              faker.randomGenerator.integer(5, min: 0),
        }: [
          null,
          faker.randomGenerator.string(5, min: 0),
        ],
        {}: [],
      },
      null,
    ],
    date: faker.date.dateTime(),
    dateValue: DateTime(2023, 6, 13, 11, 35, 20),
    dateRange: faker.date.dateTimeBetween(
        DateTime(2021, 1, 2, 3, 4, 5), DateTime(2025, 2, 3, 11, 35, 20)),
    dates: [
      faker.date.dateTime(),
      faker.date.dateTime(),
      faker.date.dateTime(),
      faker.date.dateTime(),
    ],
    mapDate: {
      faker.date.dateTime(): faker.date.dateTime(),
      faker.date.dateTime(): faker.date.dateTime(),
    },
  );
}
