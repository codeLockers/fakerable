part of '../fakerable_generator.dart';

String _handleObjectField(FieldElement field) {
  return '${field.type}.fakerable()';
}
