part of 'fakerable_generator.dart';

final String defaultIntFakerable =
    '$FakerInstanceName.$FakerRandomGeneratorMethod.integer(0, min: 100),';
final String defaultDoubleFakerable =
    '$FakerInstanceName.$FakerRandomGeneratorMethod.decimal(),';

String _handleIntField(FieldElement field) {
  final fakerableInt =
      const TypeChecker.fromRuntime(FakerableInt).firstAnnotationOf(field);
  if (fakerableInt == null) {
    //default range is 0 ~ 100
    return defaultIntFakerable;
  } else {
    final reader = ConstantReader(fakerableInt);
    final max = reader.read('max');
    final min = reader.read('min');
    return '$FakerInstanceName.$FakerRandomGeneratorMethod.integer(${max.intValue}, min: ${min.intValue}),';
  }
}

String _handleDoubleField(FieldElement field) {
  final fakerableDouble =
      const TypeChecker.fromRuntime(FakerableDouble).firstAnnotationOf(field);
  if (fakerableDouble == null) {
    return defaultDoubleFakerable;
  } else {
    final reader = ConstantReader(fakerableDouble);
    final scale = reader.read('scale');
    final min = reader.read('min');
    return '$FakerInstanceName.$FakerRandomGeneratorMethod.decimal(scale: ${scale.doubleValue}, min: ${min.doubleValue}),';
  }
}

String _handleBoolField() {
  // final fakerableInt =
  //     const TypeChecker.fromRuntime(FakerableInt).firstAnnotationOf(field);
  // if (fakerableInt == null) {
  //   //default range is 0 ~ 100
  //   return defaultIntFakerable;
  // } else {
  //   final reader = ConstantReader(fakerableInt);
  //   final max = reader.read('max');
  //   final min = reader.read('min');
  return '$FakerInstanceName.$FakerRandomGeneratorMethod.boolean(),';
  // }
}
