part of '../fakerable_generator.dart';

String _handleMapField(FieldElement field) {
  final rangeAnnotation =
      const TypeChecker.fromRuntime(FakerableRange).firstAnnotationOf(field);
  int max = 10;
  int min = 0;
  if (rangeAnnotation != null) {
    final reader = ConstantReader(rangeAnnotation);
    max = reader.read('max').intValue;
    min = reader.read('min').intValue;
  }
  return _fakerMap(field.declaration.type.toString(), min, max);
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
    return _handleIntField();
  } else if (type.isDouble) {
    return _handleDoubleField();
  } else if (type.isBool) {
    return _handleBoolField();
  } else if (type.isString) {
    return _handleStringField();
  } else if (type.isList) {
    return _fakerList(type.listElementType, min, max);
  } else if (type.isMap) {
    return _fakerMap(type, min, max);
  }
  return '$type.fakerable()';
}
