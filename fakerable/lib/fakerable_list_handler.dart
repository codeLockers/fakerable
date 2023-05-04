part of 'fakerable_generator.dart';

int maxCount = 10;
int minCount = 0;

String _handleListField(FieldElement field) {
  final fakerableList =
      const TypeChecker.fromRuntime(FakerableList).firstAnnotationOf(field);
  if (fakerableList != null) {
    final reader = ConstantReader(fakerableList);
    maxCount = reader.read('max').intValue;
    minCount = reader.read('min').intValue;
  }
  final String inlineType = field.declaration.type.toString();
  return _handleListElement(_parseListInlineElement(inlineType));
}

String _parseListInlineElement(String type) {
  if (type.startsWith('List') && type.endsWith('>')) {
    int startIndex = type.indexOf('<') + '<'.length;
    int endIndex = type.lastIndexOf('>');
    return type.substring(startIndex, endIndex);
  }
  return errorPlaceholder;
}

String _handleListElement(String elementType) {
  // print('🐟🐟 elementType = $elementType');
  if (elementType == 'int') {
    return _handleLinearIntList();
  } else if (elementType == 'double') {
    return _handleDoubleList();
  } else if (elementType == 'String') {
    return _handleStringList();
  } else if (elementType.startsWith('List')) {
    return _handleDimensionsList(elementType);
  }
  //custom type
  return _handleModelList(elementType);
}

// Linear List
String _handleLinearIntList() {
  final int loopCount = randomInt(minCount, maxCount);
  StringBuffer buffer = StringBuffer();
  buffer.writeln('[');
  for (int i = 0; i < loopCount; i++) {
    buffer.writeln(defaultIntFakerable);
  }
  buffer.writeln('],');
  return buffer.toString();
}

String _handleDoubleList() {
  final int loopCount = randomInt(minCount, maxCount);
  StringBuffer buffer = StringBuffer();
  buffer.writeln('[');
  for (int i = 0; i < loopCount; i++) {
    buffer.writeln(defaultDoubleFakerable);
  }
  buffer.writeln('],');
  return buffer.toString();
}

String _handleStringList() {
  final int loopCount = randomInt(minCount, maxCount);
  StringBuffer buffer = StringBuffer();
  buffer.writeln('[');
  for (int i = 0; i < loopCount; i++) {
    buffer.writeln(defaultStringFakerable);
  }
  buffer.writeln('],');
  return buffer.toString();
}

String _handleModelList(String modelType) {
  final int loopCount = randomInt(minCount, maxCount);
  StringBuffer buffer = StringBuffer();
  buffer.writeln('[');
  for (int i = 0; i < loopCount; i++) {
    buffer.writeln('$modelType.fakerable(),');
  }
  buffer.writeln('],');
  return buffer.toString();
}

String _handleDimensionsList(String elementType) {
  final int loopCount = randomInt(minCount, maxCount);
  StringBuffer buffer = StringBuffer();
  buffer.writeln('[');
  for (int i = 0; i < loopCount; i++) {
    buffer.writeln(_handleListElement(_parseListInlineElement(elementType)));
  }
  buffer.writeln('],');
  return buffer.toString();
}
