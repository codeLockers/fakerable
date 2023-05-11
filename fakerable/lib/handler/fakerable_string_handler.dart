part of '../fakerable_generator.dart';

final String defaultStringFakerable =
    '$FakerInstanceName.$FakerRandomGeneratorMethod.string(20, min: 0),';

String _handleStringField({FieldElement? field}) {
  if (field == null) {
    return '${FakerableConstants.string}(20, min: 0)';
  }
  final rangeAnnotation =
      const TypeChecker.fromRuntime(FakerableRange).firstAnnotationOf(field);
  final valueAnnotation =
      const TypeChecker.fromRuntime(FakerableValue).firstAnnotationOf(field);
  if (valueAnnotation != null) {
    final reader = ConstantReader(valueAnnotation);
    final value = reader.read('value');
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
    return '${FakerableConstants.string}(20, min: 0)';
  } else if (rangeAnnotation != null) {
    final reader = ConstantReader(rangeAnnotation);
    final max = reader.read('max');
    final min = reader.read('min');
    return '${FakerableConstants.string}(${max.intValue}, min: ${min.intValue})';
  }
  faker.image.image();
  return '${FakerableConstants.string}(20, min: 0)';
}
