part of '../fakerable_generator.dart';

String _handleListField(FieldElement field) {
  final rangeAnnotation =
      const TypeChecker.fromRuntime(FakerableRange).firstAnnotationOf(field);
  int max = DEFAULT_RANGE.max;
  int min = DEFAULT_RANGE.min;
  if (rangeAnnotation != null) {
    final reader = ConstantReader(rangeAnnotation);
    max = reader.read('max').intValue;
    min = reader.read('min').intValue;
  }
  return field.typeName.isNull
      ? FakerableConstants.nullString
      : _fakerList(field.typeName.listElementType, min, max);
}

String _fakerList(String elementType, int min, int max) {
  final int listLength = randomInt(min, max);
  StringBuffer buffer = StringBuffer();
  for (int i = 0; i < listLength; i++) {
    if (elementType.isInt) {
      buffer.writeln(_handleIntTypeString(elementType).commable);
    } else if (elementType.isDouble) {
      buffer.writeln(_handleDoubleTypeString(elementType).commable);
    } else if (elementType.isBool) {
      buffer.writeln(_handleBoolTypeString(elementType).commable);
    } else if (elementType.isString) {
      buffer.writeln(_handleStringTypeString(elementType).commable);
    } else if (elementType.isList) {
      buffer.writeln(elementType.isNull
          ? FakerableConstants.nullString.commable
          : _fakerList(elementType.listElementType, min, max).commable);
    } else if (elementType.isMap) {
      buffer.writeln(elementType.isNull
          ? FakerableConstants.nullString.commable
          : _fakerMap(elementType, min, max).commable);
    } else {
      buffer.writeln(_handleObjectField(elementType).commable);
    }
  }
  return buffer.toString().listZip;
}
