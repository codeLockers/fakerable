part of '../fakerable_generator.dart';

String _handleEnumField(FieldElement field) {
  final visitor = FakerableEnumVisitor();
  field.type.element?.visitChildren(visitor);
  return '${visitor.className}.values[Random().nextInt(${visitor.constants.length - 1})]';
}
