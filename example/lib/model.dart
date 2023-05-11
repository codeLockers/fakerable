import 'dart:ffi';

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

  // @FakerableString(100, min: 10)

  // final int age_copy;
  // final double score_copy;
  // final String text_copy;
  // final bool isOk;

  // @fakerableInline
  // final User user;

  // @FakerableValue(FakerableValueType.image)
  // final String image;
  // @FakerableValue(FakerableValueType.phone)
  // final String phone;
  // @FakerableValue(FakerableValueType.email)
  // final String email;

  // @FakerableList(3, 0)
  // final List<int> listInt;
  // @FakerableList(5, 1)
  // final List<double> listDouble;
  // @FakerableList(6, 4)
  // final List<String> listString;
  // final List<bool> listBool;
  // @FakerableList(6, 4)
  // final List<User> listUser;

  // @FakerableList(6, 1)
  // final List<List<int>> listsInt;
  // @FakerableList(5, 2)
  // final List<List<double>> listsDouble;
  // @FakerableList(4, 3)
  // final List<List<String>> listsString;

  // @FakerableList(10, 1)
  // final List<List<List<int>>> listssInt;
  // @FakerableList(9, 2)
  // final List<List<List<double>>> listssDouble;
  // @FakerableList(8, 3)
  // final List<List<List<String>>> listssString;

  // final List<Map<int, int>> listMapInt;
  // final List<Map<int, Map<int, List<int>>>> listMapsListInt;

  // final Map<String, int> mapStringInt;
  // final Map<String, double> mapStringDouble;
  // final Map<String, String> mapStringString;
  // final Map<bool, bool> mapBoolBool;
  // final Map<int, String> mapIntString;
  // final Map<double, String> mapDoubleString;
  // final Map<String, User> mapStringUser;
  // final Map<int, User> mapIntUser;
  // final Map<double, User> mapDoubleUser;
  // final Map<User, String> mapUserString;
  // final Map<User, int> mapUserInt;
  // final Map<User, double> mapUserDouble;
  // final Map<int, List<int>> mapIntList;
  // final Map<int, List<double>> mapDoubleList;
  // final Map<int, List<String>> mapStringList;
  // final Map<int, List<User>> mapUserList;
  // final Map<int, List<List<int>>> mapIntsList;
  // final Map<int, List<List<User>>> mapUsersList;
  // final Map<int, List<List<List<double>>>> mapDoublessList;
  // final Map<int, List<List<List<List<String>>>>> mapStringsssList;

  // final Map<List<int>, int> mapListInt;
  // final Map<List<double>, int> mapListDouble;
  // final Map<List<String>, int> mapListString;
  // final Map<List<User>, int> mapListUser;
  // final Map<List<List<int>>, int> mapListInts;
  // final Map<List<List<User>>, int> mapListUsers;
  // final Map<List<List<List<double>>>, int> mapListDoubless;
  // final Map<List<List<List<List<String>>>>, int> mapListStringsss;

  // final Map<int, Map<int, int>> mapIntMap;
  // final Map<double, Map<int, double>> mapDoubleMap;
  // final Map<String, Map<int, String>> mapStringMap;
  // final Map<User, Map<int, Map<int, User>>> mapIntMaps;
  // final Map<List<int>, Map<int, Map<int, Map<int, List<int>>>>> mapIntMapss;
  // final Map<Map<int, int>, Map<int, Map<int, Map<int, int>>>> mapMapMapss;
  // final Map<Map<int, Map<int, int>>, Map<int, Map<int, Map<int, int>>>>
  //     mapMapsMapss;
  // final Map<Map<int, Map<int, Map<int, int>>>,
  //     Map<int, Map<int, Map<int, int>>>> mapMapssMapss;
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
      required this.listsUser
      // required this.age_copy,
      // required this.score_copy,
      // required this.text_copy,
      // required this.isOk,
      // required this.user,
      // required this.image,
      // required this.phone,
      // required this.email,
      // required this.listInt,
      // required this.listDouble,
      // required this.listString,
      // required this.listBool,
      // required this.listUser,
      // required this.listsInt,
      // required this.listsDouble,
      // required this.listsString,
      // required this.listssInt,
      // required this.listssDouble,
      // required this.listssString,
      // required this.listMapInt,
      // required this.listMapsListInt,
      // required this.mapStringInt,
      // required this.mapStringDouble,
      // required this.mapStringString,
      // required this.mapBoolBool,
      // required this.mapIntString,
      // required this.mapDoubleString,
      // required this.mapIntUser,
      // required this.mapStringUser,
      // required this.mapDoubleUser,
      // required this.mapUserString,
      // required this.mapUserInt,
      // required this.mapUserDouble,
      // required this.mapDoubleList,
      // required this.mapIntList,
      // required this.mapStringList,
      // required this.mapIntsList,
      // required this.mapDoublessList,
      // required this.mapStringsssList,
      // required this.mapUserList,
      // required this.mapUsersList,
      // required this.mapListInt,
      // required this.mapListDouble,
      // required this.mapListString,
      // required this.mapListUser,
      // required this.mapListInts,
      // required this.mapListUsers,
      // required this.mapListDoubless,
      // required this.mapListStringsss,
      // required this.mapIntMap,
      // required this.mapDoubleMap,
      // required this.mapStringMap,
      // required this.mapIntMaps,
      // required this.mapIntMapss,
      // required this.mapMapMapss,
      // required this.mapMapsMapss,
      // required this.mapMapssMapss
      });
  factory Model.fakerable() => _$ModelFakerable();
}
