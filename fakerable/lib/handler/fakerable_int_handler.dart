part of '../fakerable_generator.dart';

String _handleIntField(FieldElement field) {
  final rangeAnnotation =
      const TypeChecker.fromRuntime(FakerableRange).firstAnnotationOf(field);
  final valueAnnotation =
      const TypeChecker.fromRuntime(FakerableValue).firstAnnotationOf(field);
  if (valueAnnotation != null) {
    final reader = ConstantReader(valueAnnotation);
    final value = reader.read('value');
    return value.isNull ? FakerableConstants.nullString : '${value.intValue}';
  } else if (rangeAnnotation != null) {
    final reader = ConstantReader(rangeAnnotation);
    final max = reader.read('max');
    final min = reader.read('min');
    return _handleNullableInt(field.typeName, max.intValue, min.intValue);
  }
  return _handleNullableInt(
      field.typeName, DEFAULT_RANGE.max, DEFAULT_RANGE.min);
}

String _handleIntTypeString(String type) {
  return type.isNull
      ? FakerableConstants.nullString
      : '${FakerableConstants.integer}(${DEFAULT_RANGE.max}, min: ${DEFAULT_RANGE.min})';
}

String _handleNullableInt(String type, int max, int min) {
  if (type.isNull) {
    return FakerableConstants.nullString;
  }
  return '${FakerableConstants.integer}($max, min: $min)';
}
