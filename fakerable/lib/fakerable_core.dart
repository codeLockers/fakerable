import 'dart:math';

import 'package:analyzer/dart/element/element.dart';
import 'package:faker/faker.dart';

class FakerableConstants {
  // ignore: non_constant_identifier_names
  static String Faker = 'Faker';
  static String faker = Faker.toLowerCase();
  static String randomGenerator = 'randomGenerator';
  static String integer =
      '${FakerableConstants.faker}.${FakerableConstants.randomGenerator}.integer';
  static String decimal =
      '${FakerableConstants.faker}.${FakerableConstants.randomGenerator}.decimal';
  static String boolean =
      '${FakerableConstants.faker}.${FakerableConstants.randomGenerator}.boolean';
  static String string =
      '${FakerableConstants.faker}.${FakerableConstants.randomGenerator}.string';
  static String internet = '${FakerableConstants.faker}.internet';
  static String email = '${FakerableConstants.internet}.email';
  static String phone = '${FakerableConstants.faker}.phoneNumber';
  static String image = '${FakerableConstants.faker}.image.image';
  static String nullString = 'null';

  static String fakerableConstructor(String name) =>
      '$name _\$${name}Fakerable()';
  static String fakerDefination =
      'final ${FakerableConstants.Faker} ${FakerableConstants.faker} = ${FakerableConstants.Faker}();';
}

int randomInt(int min, int max) {
  if (min >= max) {
    return min;
  }
  return min + Random().nextInt(max - min);
}

extension StringConvertType on String {
  bool get isInt => this == 'int' || this == 'int?';
  bool get isDouble => this == 'double' || this == 'double?';
  bool get isString => this == 'String' || this == 'String?';
  bool get isBool => this == 'bool' || this == 'bool?';
  bool get isList => startsWith('List<');
  bool get isMap => startsWith('Map<');
  bool get isOptional => endsWith('?');
  bool get isNull => isOptional && Faker().randomGenerator.boolean();
  bool get isClass => toLowerCase() == 'class';
  bool get isEnum => toLowerCase() == 'enum';

  String get commable => '$this,';
  String get removeOptional => isOptional ? substring(0, length - 1) : this;

  String get listElementType {
    if (!isList) {
      return '';
    }
    final int startIndex = indexOf('<') + '<'.length;
    final int endIndex = lastIndexOf('>');
    return substring(startIndex, endIndex);
  }

  String get listZip => '[$this]';

  String get mapKeyType {
    int startIndex = indexOf('<') + '<'.length;
    int endIndex = lastIndexOf('>');
    final combineType = substring(startIndex, endIndex);
    if (combineType.contains('>,')) {
      int index = combineType.indexOf('>,') + '>,'.length;
      return combineType.substring(0, index - ','.length);
    } else {
      int index = combineType.indexOf(',') + ','.length;
      return combineType.substring(0, index - ','.length);
    }
  }

  String get mapValueType {
    int startIndex = indexOf('<') + '<'.length;
    int endIndex = lastIndexOf('>');
    final combineType = substring(startIndex, endIndex);
    if (combineType.contains('>,')) {
      int index = combineType.indexOf('>,') + '>,'.length;
      return combineType
          .substring(index, combineType.length)
          .replaceAll(' ', '');
    } else {
      int index = combineType.indexOf(',') + ','.length;
      return combineType
          .substring(index, combineType.length)
          .replaceAll(' ', '');
    }
  }

  String get mapZip => '{$this}';
}

extension FieldElementPropery on FieldElement {
  String get typeName => declaration.type.toString();
}

enum FakerableType {
  fakerableClass('class'),
  fakerableEnum('enum');

  final String name;
  const FakerableType(this.name);

  static FakerableType value(String name) =>
      FakerableType.values.firstWhere((element) => element.name == name);
}
