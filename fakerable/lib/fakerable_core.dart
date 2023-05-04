import 'dart:math';

const String FakerClassName = 'Faker';
String FakerInstanceName = FakerClassName.toLowerCase();
const String FakerableClassName = 'Fakerable';
String FakerableMethodName = FakerableClassName.toLowerCase();
String FakerRandomGeneratorMethod = 'randomGenerator';

String errorPlaceholder = 'this type can not parse!!!';

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
  bool get isList => startsWith('List<');
  bool get isMap => startsWith('Map<');
}
