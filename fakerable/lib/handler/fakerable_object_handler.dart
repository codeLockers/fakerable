part of '../fakerable_generator.dart';

String _handleObjectField(String field) {
  return field.isNull
      ? FakerableConstants.nullString
      : '${field.removeOptional}.fakerable()';
}
