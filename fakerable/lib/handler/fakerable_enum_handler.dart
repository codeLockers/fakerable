part of '../fakerable_generator.dart';

String _handleEnumElement(Element element) {
  String enumName = element.name ?? '';
  if (enumName.isEmpty) {
    return '';
  }
  return '$enumName _\$${enumName}Fakerable() => $enumName.values[Random().nextInt($enumName.values.length - 1)];';
}
