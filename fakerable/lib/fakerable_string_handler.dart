part of 'fakerable_generator.dart';

final String defaultStringFakerable =
    '$FakerInstanceName.$FakerRandomGeneratorMethod.string(20, min: 0),';

String _handleStringField(FieldElement field) {
  final fakerableValue =
      const TypeChecker.fromRuntime(FakerableValue).firstAnnotationOf(field);
  if (fakerableValue == null) {
    //common string
    final fakerableString =
        const TypeChecker.fromRuntime(FakerableString).firstAnnotationOf(field);
    if (fakerableString == null) {
      //default length is 0 ~ 20
      return '$FakerInstanceName.$FakerRandomGeneratorMethod.string(20, min: 0),';
    } else {
      final reader = ConstantReader(fakerableString);
      final max = reader.read('max');
      final min = reader.read('min');
      return '$FakerInstanceName.$FakerRandomGeneratorMethod.string(${max.intValue}, min: ${min.intValue}),';
    }
  } else {
    final reader = ConstantReader(fakerableValue);
    final type = reader.read('type');
    if ((type.objectValue.variable?.type.toString() ?? '') ==
        'FakerableValueType') {
      final FakerableValueType fakerableValueType =
          FakerableValueType.type(type.objectValue.variable?.name ?? '');
      switch (fakerableValueType) {
        case FakerableValueType.email:
          return '$FakerInstanceName.internet.email(),';
        case FakerableValueType.phone:
          return '$FakerInstanceName.phoneNumber.us(),';
        case FakerableValueType.image:
          return '$FakerInstanceName.image.image(),';
      }
    } else {
      return errorPlaceholder;
    }
  }
}
