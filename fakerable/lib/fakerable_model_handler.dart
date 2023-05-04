part of 'fakerable_generator.dart';

String _handleModelField(FieldElement field) {
  final fakerableInline =
      const TypeChecker.fromRuntime(FakerableInline).firstAnnotationOf(field);
  if (fakerableInline == null) {
    return errorPlaceholder;
  } else {
    return '${field.type}.fakerable(),';
  }
}
