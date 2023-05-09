part of 'fakerable_generator.dart';

String _handleIntField(FieldElement field) {
  final rangeAnnotation =
      const TypeChecker.fromRuntime(FakerableRange).firstAnnotationOf(field);
  final valueAnnotation =
      const TypeChecker.fromRuntime(FakerableValue).firstAnnotationOf(field);
  if (valueAnnotation != null) {
    final reader = ConstantReader(valueAnnotation);
    final value = reader.read('value');
    return '${value.intValue}';
  } else if (rangeAnnotation != null) {
    final reader = ConstantReader(rangeAnnotation);
    final max = reader.read('max');
    final min = reader.read('min');
    return '${FakerableConstants.integer}(${max.intValue}, min: ${min.intValue})';
  }
  return '${FakerableConstants.integer}(100, min: 0)';
}
