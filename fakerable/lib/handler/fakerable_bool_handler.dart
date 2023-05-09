part of '../fakerable_generator.dart';

String _handleBoolField(FieldElement field) {
  final valueAnnotation =
      const TypeChecker.fromRuntime(FakerableValue).firstAnnotationOf(field);
  if (valueAnnotation != null) {
    final reader = ConstantReader(valueAnnotation);
    final value = reader.read('value');
    return '${value.boolValue}';
  }
  return '${FakerableConstants.boolean}()';
}
