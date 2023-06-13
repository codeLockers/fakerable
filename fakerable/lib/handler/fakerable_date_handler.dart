part of '../fakerable_generator.dart';

String _handleDateField(FieldElement field) {
  final rangeAnnotation =
      const TypeChecker.fromRuntime(FakerableRange).firstAnnotationOf(field);
  final valueAnnotation =
      const TypeChecker.fromRuntime(FakerableValue).firstAnnotationOf(field);
  if (valueAnnotation != null) {
    final reader = ConstantReader(valueAnnotation);
    final value = reader.read('value');
    if (value.instanceOf(const TypeChecker.fromRuntime(FakerableDate))) {
      return FakerableDateParse.dateString(value);
    } else {
      return '${FakerableConstants.date}()';
    }
  } else if (rangeAnnotation != null) {
    final reader = ConstantReader(rangeAnnotation);
    final max = reader.read('max');
    final min = reader.read('min');
    return 'faker.date.dateTimeBetween(${FakerableDateParse.dateString(min)}, ${FakerableDateParse.dateString(max)})';
  }
  return '${FakerableConstants.date}()';
}

String _handleDateTypeString(String type) {
  return '${FakerableConstants.date}()';
}
