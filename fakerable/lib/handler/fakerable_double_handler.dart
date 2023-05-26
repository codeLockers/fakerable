part of '../fakerable_generator.dart';

String _handleDoubleField(FieldElement field) {
  final rangeAnnotation =
      const TypeChecker.fromRuntime(FakerableRange).firstAnnotationOf(field);
  final valueAnnotation =
      const TypeChecker.fromRuntime(FakerableValue).firstAnnotationOf(field);
  if (valueAnnotation != null) {
    final reader = ConstantReader(valueAnnotation);
    final value = reader.read('value');
    return value.isNull
        ? FakerableConstants.nullString
        : '${value.doubleValue}';
  } else if (rangeAnnotation != null) {
    final reader = ConstantReader(rangeAnnotation);
    final max = reader.read('max');
    final min = reader.read('min');
    return field.typeName.isNull
        ? FakerableConstants.nullString
        : '${FakerableConstants.decimal}(scale: ${max.doubleValue - min.doubleValue}, min: ${min.doubleValue})';
  }
  return field.typeName.isNull
      ? FakerableConstants.nullString
      : '${FakerableConstants.decimal}()';
}

String _handleDoubleTypeString(String type) {
  return type.isNull
      ? FakerableConstants.nullString
      : '${FakerableConstants.decimal}()';
}
