part of '../fakerable_generator.dart';

int maxCount = 10;
int minCount = 0;

String _handleListField(FieldElement field) {
  final rangeAnnotation =
      const TypeChecker.fromRuntime(FakerableRange).firstAnnotationOf(field);
  int max = 10;
  int min = 0;
  if (rangeAnnotation != null) {
    final reader = ConstantReader(rangeAnnotation);
    max = reader.read('max').intValue;
    min = reader.read('min').intValue;
  }
  final String elementType = field.declaration.type.toString().listElementType;
  return _fakerList(elementType, min, max);
}

String _fakerList(String elementType, int min, int max) {
  final int listLength = randomInt(min, max);
  StringBuffer buffer = StringBuffer();
  for (int i = 0; i < listLength; i++) {
    if (elementType.isInt) {
      buffer.writeln(_handleIntField().commable);
    } else if (elementType.isDouble) {
      buffer.writeln(_handleDoubleField().commable);
    } else if (elementType.isBool) {
      buffer.writeln(_handleBoolField().commable);
    } else if (elementType.isString) {
      buffer.writeln(_handleStringField().commable);
    } else if (elementType.isList) {
      buffer
          .writeln(_fakerList(elementType.listElementType, min, max).commable);
    } else if (elementType.isMap) {
      buffer.writeln(_fakerMap(elementType, min, max).commable);
    } else {
      buffer.writeln(_handleObjectField(elementType).commable);
    }
  }
  return buffer.toString().listZip;
}
