part of '../fakerable_generator.dart';

String _handleStringField(FieldElement field) {
  final rangeAnnotation =
      const TypeChecker.fromRuntime(FakerableRange).firstAnnotationOf(field);
  final valueAnnotation =
      const TypeChecker.fromRuntime(FakerableValue).firstAnnotationOf(field);
  if (valueAnnotation != null) {
    final reader = ConstantReader(valueAnnotation);
    final value = reader.read('value');
    if (value.isNull) {
      return FakerableConstants.nullString;
    }
    if (value.isString) {
      return '\'${value.stringValue}\'';
    } else if (value
        .instanceOf(const TypeChecker.fromRuntime(FakerableSpecial))) {
      final name = value.objectValue.variable?.name ?? '';
      switch (FakerableSpecial.type(name)) {
        case FakerableSpecial.email:
          return '${FakerableConstants.email}()';
        case FakerableSpecial.image:
          return '${FakerableConstants.image}()';
        case FakerableSpecial.phone:
          return '${FakerableConstants.phone}.us()';
      }
    }
    return '${FakerableConstants.string}(${DEFAULT_RANGE.max}, min: ${DEFAULT_RANGE.min})';
  } else if (rangeAnnotation != null) {
    final reader = ConstantReader(rangeAnnotation);
    final max = reader.read('max');
    final min = reader.read('min');
    return _handleNullableString(field.typeName, max.intValue, min.intValue);
  }
  return _handleNullableString(
      field.typeName, DEFAULT_RANGE.max, DEFAULT_RANGE.min);
}

String _handleStringTypeString(String type) {
  return type.isNull
      ? FakerableConstants.nullString
      : '${FakerableConstants.string}(${DEFAULT_RANGE.max}, min: ${DEFAULT_RANGE.min})';
}

String _handleNullableString(String type, int max, int min) {
  if (type.isNull) {
    return FakerableConstants.nullString;
  }
  return '${FakerableConstants.string}($max, min: $min)';
}
