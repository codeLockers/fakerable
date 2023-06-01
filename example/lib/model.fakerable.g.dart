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
    listInt: [
      faker.randomGenerator.integer(5, min: 0),
      faker.randomGenerator.integer(5, min: 0),
      faker.randomGenerator.integer(5, min: 0),
      faker.randomGenerator.integer(5, min: 0),
    ],
    listDouble: [],
    listString: [
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
      User.fakerable(),
    ],
    listsInt: [],
    listsDouble: [],
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
    mapDoubleDouble: {
      faker.randomGenerator.decimal(): faker.randomGenerator.decimal(),
    },
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
    mapListStringListString: {
      []: [],
    },
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
    intNullable3: null,
    intNullable4: null,
    doubleNullable1: null,
    doubleNullable2:
        faker.randomGenerator.decimal(scale: 1.8000000000000007, min: 9.7),
    doubleNullable3: null,
    doubleNullable4: null,
    boolNullable1: null,
    boolNullable2: null,
    boolNullable3: null,
    boolNullable4: null,
    stringNullable1: faker.randomGenerator.string(5, min: 0),
    stringNullable2: faker.randomGenerator.string(6, min: 3),
    stringNullable3: null,
    stringNullable4: null,
    userNullable1: null,
    userNullable2: User.fakerable(),
    intListNullable1: null,
    intListNullable2: [
      null,
      null,
      faker.randomGenerator.integer(5, min: 0),
    ],
    intListNullable3: [
      faker.randomGenerator.integer(5, min: 0),
      faker.randomGenerator.integer(5, min: 0),
      null,
      null,
    ],
    doubleListNullable1: [
      faker.randomGenerator.decimal(),
    ],
    doubleListNullable2: null,
    doubleListNullable3: [
      null,
      faker.randomGenerator.decimal(),
    ],
    stringListNullable1: [
      faker.randomGenerator.string(5, min: 0),
      faker.randomGenerator.string(5, min: 0),
      null,
      null,
    ],
    stringListNullable2: [
      faker.randomGenerator.string(5, min: 0),
      faker.randomGenerator.string(5, min: 0),
    ],
    stringListNullable3: [
      null,
      null,
      faker.randomGenerator.string(5, min: 0),
      null,
    ],
    userListNullable1: null,
    userListNullable2: null,
    userListNullable3: [
      User.fakerable(),
      null,
      User.fakerable(),
      User.fakerable(),
    ],
    intListsNullable1: [
      [
        faker.randomGenerator.integer(5, min: 0),
      ],
    ],
    doubleListsNullable2: null,
    stringListsNullable3: null,
    mapIntDoubleListNullable1: null,
    mapStringBoolListNullable2: [
      null,
      null,
    ],
    mapIntIntListStringListNullable3: [
      null,
      {
        {
          null: faker.randomGenerator.integer(5, min: 0),
        }: [],
        {
          null: null,
          faker.randomGenerator.integer(5, min: 0):
              faker.randomGenerator.integer(5, min: 0),
          null: null,
          faker.randomGenerator.integer(5, min: 0): null,
        }: [
          null,
        ],
      },
      {
        {
          faker.randomGenerator.integer(5, min: 0):
              faker.randomGenerator.integer(5, min: 0),
        }: [
          null,
          null,
          faker.randomGenerator.string(5, min: 0),
        ],
        {
          null: faker.randomGenerator.integer(5, min: 0),
          faker.randomGenerator.integer(5, min: 0):
              faker.randomGenerator.integer(5, min: 0),
          null: faker.randomGenerator.integer(5, min: 0),
        }: [],
        {
          null: faker.randomGenerator.integer(5, min: 0),
        }: [],
      },
      {
        {
          null: faker.randomGenerator.integer(5, min: 0),
          faker.randomGenerator.integer(5, min: 0):
              faker.randomGenerator.integer(5, min: 0),
          faker.randomGenerator.integer(5, min: 0):
              faker.randomGenerator.integer(5, min: 0),
        }: [
          null,
          faker.randomGenerator.string(5, min: 0),
        ],
        {
          null: null,
          faker.randomGenerator.integer(5, min: 0):
              faker.randomGenerator.integer(5, min: 0),
        }: [
          null,
          faker.randomGenerator.string(5, min: 0),
          null,
        ],
      },
    ],
  );
}
