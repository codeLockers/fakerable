part of '../fakerable_generator.dart';

String _handleBoolField(FieldElement field) {
  final valueAnnotation =
      const TypeChecker.fromRuntime(FakerableValue).firstAnnotationOf(field);
  if (valueAnnotation != null) {
    final reader = ConstantReader(valueAnnotation);
    final value = reader.read('value');
    return value.isNull ? FakerableConstants.nullString : '${value.boolValue}';
  }
  return field.typeName.isNull
      ? FakerableConstants.nullString
      : '${FakerableConstants.boolean}()';
}

String _handleBoolTypeString(String type) {
  return type.isNull
      ? FakerableConstants.nullString
      : '${FakerableConstants.boolean}()';
}
