part of 'fakerable_generator.dart';

final String defaultIntFakerable =
    '$FakerInstanceName.$FakerRandomGeneratorMethod.integer(0, min: 100),';
final String defaultDoubleFakerable =
    '$FakerInstanceName.$FakerRandomGeneratorMethod.decimal(),';

String _handleDoubleField(FieldElement field) {
  final rangeAnnotation =
      const TypeChecker.fromRuntime(FakerableRange).firstAnnotationOf(field);
  final valueAnnotation =
      const TypeChecker.fromRuntime(FakerableValue).firstAnnotationOf(field);
  if (valueAnnotation != null) {
    final reader = ConstantReader(valueAnnotation);
    final value = reader.read('value');
    return '${value.doubleValue}';
  } else if (rangeAnnotation != null) {
    final reader = ConstantReader(rangeAnnotation);
    final max = reader.read('max');
    final min = reader.read('min');
    return '${FakerableConstants.decimal}(scale: ${max.doubleValue - min.doubleValue}, min: ${min.doubleValue})';
  }
  return '${FakerableConstants.decimal}()';
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
