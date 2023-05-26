part of '../fakerable_generator.dart';

String _handleMapField(FieldElement field) {
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
      : _fakerMap(field.typeName, min, max);
}

String _fakerMap(String elementType, int min, int max) {
  if (!elementType.isMap) {
    return '';
  }

  StringBuffer buffer = StringBuffer();
  for (int i = 0; i < randomInt(min, max); i++) {
    buffer.writeln(
        '${_fakerMapKey(elementType.mapKeyType, min, max)}: ${_fakerMapValue(elementType.mapValueType, min, max).commable}');
  }
  return buffer.toString().mapZip;
}

String _fakerMapKey(String key, int min, int max) {
  return _fakerType(key, min, max);
}

String _fakerMapValue(String value, int min, int max) {
  return _fakerType(value, min, max);
}

String _fakerType(String type, int min, int max) {
  if (type.isInt) {
    return _handleIntTypeString(type);
  } else if (type.isDouble) {
    return _handleDoubleTypeString(type);
  } else if (type.isBool) {
    return _handleBoolTypeString(type);
  } else if (type.isString) {
    return _handleStringTypeString(type);
  } else if (type.isList) {
    return type.isNull
        ? FakerableConstants.nullString.commable
        : _fakerList(type.listElementType, min, max);
  } else if (type.isMap) {
    return type.isNull
        ? FakerableConstants.nullString
        : _fakerMap(type, min, max);
  }
  return _handleObjectField(type);
}
