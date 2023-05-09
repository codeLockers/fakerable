import 'dart:math';

const String FakerClassName = 'Faker';
String FakerInstanceName = FakerClassName.toLowerCase();
const String FakerableClassName = 'Fakerable';
String FakerableMethodName = FakerableClassName.toLowerCase();
String FakerRandomGeneratorMethod = 'randomGenerator';

String errorPlaceholder = 'this type can not parse!!!';

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
}

int randomInt(int min, int max) {
  if (min >= max) {
    return min;
  }
  return min + Random().nextInt(max - min);
}

extension StringConvertType on String {
  bool get isInt => this == 'int';
  bool get isDouble => this == 'double';
  bool get isString => this == 'String';
  bool get isBool => this == 'bool';
  bool get isList => startsWith('List<');
  bool get isMap => startsWith('Map<');

  String get commable => '$this,';
}
