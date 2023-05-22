import 'dart:math';

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
