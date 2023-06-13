import 'package:example/user.dart';
import 'package:faker/faker.dart';

import 'package:fakerable_annotations/fakerable_annotations.dart';
part 'model.fakerable.g.dart';

@fakerable
class Model {
  final int age;
  @FakerableRange<int>(min: 6, max: 19)
  final int ageRange;
  @FakerableValue<int>(77)
  final int ageValue;
  @FakerableRange(min: 16, max: 29)
  @FakerableValue<int>(66)
  final int ageValueRange;

  final double score;
  @FakerableRange<double>(min: 3.3, max: 9.8)
  final double scoreRange;
  @FakerableValue(10.4)
  final double scoreValue;
  @FakerableRange<double>(min: 1.3, max: 2.8)
  @FakerableValue(0.4)
  final double scoreValueRange;

  final bool isOk;
  @FakerableValue<bool>(false)
  final bool isOkValue;

  final User user;

  final String text;
  @FakerableRange<int>(min: 2, max: 15)
  final String textRange;
  @FakerableValue<String>('wiredcraft')
  final String textValue;
  @FakerableRange<int>(min: 1, max: 5)
  @FakerableValue<String>('wiredcraft2')
  final String textValueRange;

  @FakerableValue<FakerableSpecial>(FakerableSpecial.email)
  final String textValueSpecialEmail;
  @FakerableValue<FakerableSpecial>(FakerableSpecial.image)
  final String textValueSpecialImage;
  @FakerableValue<FakerableSpecial>(FakerableSpecial.phone)
  final String textValueSpecialPhone;

  final List<int> listInt;
  @FakerableRange(min: 0, max: 2)
  final List<double> listDouble;
  @FakerableRange(min: 1, max: 3)
  final List<String> listString;
  @FakerableRange(min: 2, max: 4)
  final List<bool> listBool;
  @FakerableRange(min: 3, max: 5)
  final List<User> listUser;

  final List<List<int>> listsInt;
  @FakerableRange(min: 0, max: 2)
  final List<List<double>> listsDouble;
  @FakerableRange(min: 1, max: 3)
  final List<List<String>> listsString;
  @FakerableRange(min: 2, max: 4)
  final List<List<bool>> listsBool;
  @FakerableRange(min: 3, max: 5)
  final List<List<User>> listsUser;

  @FakerableRange(min: 1, max: 2)
  final List<Map<String, String>> listMapStringString;

  final Map<String, String> mapStringString;
  @FakerableRange(min: 0, max: 2)
  final Map<double, double> mapDoubleDouble;
  @FakerableRange(min: 1, max: 3)
  final Map<bool, bool> mapBoolBool;
  @FakerableRange(min: 3, max: 5)
  final Map<int, int> mapIntInt;
  @FakerableRange(min: 4, max: 6)
  final Map<User, User> mapUserUser;

  @FakerableRange(min: 0, max: 2)
  final Map<List<String>, List<String>> mapListStringListString;
  @FakerableRange(min: 1, max: 2)
  final Map<List<int>, List<int>> mapListsIntListsInt;

  @FakerableRange(min: 1, max: 2)
  final Map<Map<String, String>, Map<bool, bool>> mapMapStringStringMapBoolBool;

  //nullable
  final int? intNullable1;
  @FakerableRange(min: 10, max: 15)
  final int? intNullable2;
  final int? intNullable3;
  @FakerableValue(null)
  final int? intNullable4;

  final double? doubleNullable1;
  @FakerableRange<double>(min: 9.7, max: 11.5)
  final double? doubleNullable2;
  final double? doubleNullable3;
  @FakerableValue(null)
  final double? doubleNullable4;

  final bool? boolNullable1;
  final bool? boolNullable2;
  final bool? boolNullable3;
  @FakerableValue(null)
  final bool? boolNullable4;

  final String? stringNullable1;
  @FakerableRange<int>(min: 3, max: 6)
  final String? stringNullable2;
  final String? stringNullable3;
  @FakerableValue(null)
  final String? stringNullable4;

  final User? userNullable1;
  final User? userNullable2;

  final List<int?>? intListNullable1;
  @FakerableRange(min: 2, max: 4)
  final List<int?>? intListNullable2;
  final List<int?>? intListNullable3;

  final List<double?>? doubleListNullable1;
  @FakerableRange(min: 2, max: 4)
  final List<double?>? doubleListNullable2;
  final List<double?>? doubleListNullable3;

  final List<String?>? stringListNullable1;
  @FakerableRange(min: 2, max: 4)
  final List<String?>? stringListNullable2;
  final List<String?>? stringListNullable3;

  final List<User?>? userListNullable1;
  @FakerableRange(min: 2, max: 4)
  final List<User?>? userListNullable2;
  final List<User?>? userListNullable3;

  final List<List<int?>?>? intListsNullable1;
  @FakerableRange(min: 2, max: 4)
  final List<List<double?>?>? doubleListsNullable2;
  final List<List<String?>?>? stringListsNullable3;

  final List<Map<int?, double>?>? mapIntDoubleListNullable1;
  @FakerableRange(min: 2, max: 4)
  final List<Map<String?, bool?>?>? mapStringBoolListNullable2;
  final List<Map<Map<int?, int?>, List<String?>>?>?
      mapIntIntListStringListNullable3;

  final DateTime date;
  @FakerableValue<FakerableDate>(FakerableDate(
      year: 2023, month: 6, day: 13, hour: 11, minute: 35, second: 20))
  final DateTime dateValue;
  @FakerableRange<FakerableDate>(
      min: FakerableDate(
          year: 2021, month: 1, day: 2, hour: 3, minute: 4, second: 5),
      max: FakerableDate(
          year: 2025, month: 2, day: 3, hour: 11, minute: 35, second: 20))
  final DateTime dateRange;
  final List<DateTime> dates;
  final Map<DateTime, DateTime> mapDate;

  const Model(
      {required this.age,
      required this.ageRange,
      required this.ageValue,
      required this.ageValueRange,
      required this.score,
      required this.scoreRange,
      required this.scoreValue,
      required this.scoreValueRange,
      required this.isOk,
      required this.isOkValue,
      required this.user,
      required this.text,
      required this.textRange,
      required this.textValue,
      required this.textValueRange,
      required this.textValueSpecialEmail,
      required this.textValueSpecialImage,
      required this.textValueSpecialPhone,
      required this.listInt,
      required this.listDouble,
      required this.listBool,
      required this.listString,
      required this.listUser,
      required this.listsInt,
      required this.listsDouble,
      required this.listsBool,
      required this.listsString,
      required this.listsUser,
      required this.listMapStringString,
      required this.mapBoolBool,
      required this.mapDoubleDouble,
      required this.mapStringString,
      required this.mapIntInt,
      required this.mapUserUser,
      required this.mapListStringListString,
      required this.mapListsIntListsInt,
      required this.mapMapStringStringMapBoolBool,
      required this.intNullable1,
      required this.intNullable2,
      required this.intNullable3,
      required this.intNullable4,
      required this.doubleNullable1,
      required this.doubleNullable2,
      required this.doubleNullable3,
      required this.doubleNullable4,
      required this.boolNullable1,
      required this.boolNullable2,
      required this.boolNullable3,
      required this.boolNullable4,
      required this.stringNullable1,
      required this.stringNullable2,
      required this.stringNullable3,
      required this.stringNullable4,
      required this.userNullable1,
      required this.userNullable2,
      required this.intListNullable1,
      required this.intListNullable2,
      required this.intListNullable3,
      required this.doubleListNullable1,
      required this.doubleListNullable2,
      required this.doubleListNullable3,
      required this.stringListNullable1,
      required this.stringListNullable2,
      required this.stringListNullable3,
      required this.userListNullable1,
      required this.userListNullable2,
      required this.userListNullable3,
      required this.intListsNullable1,
      required this.doubleListsNullable2,
      required this.stringListsNullable3,
      required this.mapIntDoubleListNullable1,
      required this.mapStringBoolListNullable2,
      required this.mapIntIntListStringListNullable3,
      required this.date,
      required this.dateValue,
      required this.dateRange,
      required this.dates,
      required this.mapDate});
  factory Model.fakerable() => _$ModelFakerable();
}
