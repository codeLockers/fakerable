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
      required this.mapMapStringStringMapBoolBool});
  factory Model.fakerable() => _$ModelFakerable();
}
