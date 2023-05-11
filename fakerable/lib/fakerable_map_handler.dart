part of 'fakerable_generator.dart';

String _handleMapField(FieldElement field) {
  final String type = field.declaration.type.toString();
  return _parseMapInlineElement(type);
}

String _parseMapInlineElement(String type) {
  if (type.startsWith('Map<') && type.endsWith('>')) {
    int startIndex = type.indexOf('<') + '<'.length;
    int endIndex = type.lastIndexOf('>');
    final inlineTypes = type.substring(startIndex, endIndex);
    return _parseMapInlineType(inlineTypes);
  }
  return errorPlaceholder;
}

String _parseMapInlineType(String inlineType) {
  if (inlineType.contains('>,')) {
    int index = inlineType.indexOf('>,') + '>,'.length;
    final keyType = inlineType.substring(0, index - ','.length);
    final valueType =
        inlineType.substring(index, inlineType.length).replaceAll(' ', '');
    print('🐟🐟 keyType = $keyType valueType = $valueType');
    return _handleMapGenerator(keyType, valueType);
  } else {
    int index = inlineType.indexOf(',') + ','.length;
    final keyType = inlineType.substring(0, index - ','.length);
    final valueType =
        inlineType.substring(index, inlineType.length).replaceAll(' ', '');
    // print('🐟🐟 keyType = $keyType valueType = $valueType');
    return _handleMapGenerator(keyType, valueType);
  }
}

String _handleMapGenerator(String keyType, String valueType) {
  final int loopCount = randomInt(minCount, maxCount);
  StringBuffer buffer = StringBuffer();
  buffer.writeln('{');
  for (int i = 0; i < loopCount; i++) {
    buffer.writeln('${_keyGenerator(keyType)}: ${_valueGenerator(valueType)}');
  }
  buffer.writeln('},');
  return buffer.toString();
}

String _keyGenerator(String keyType) {
  // if (keyType.isInt) {
  //   return '$FakerInstanceName.$FakerRandomGeneratorMethod.integer(0, min: 100)';
  // } else if (keyType.isDouble) {
  //   return '$FakerInstanceName.$FakerRandomGeneratorMethod.decimal()';
  // } else if (keyType.isString) {
  //   return 'faker.randomGenerator.string(20, min: 0)';
  // } else if (keyType.isList) {
  //   final key = _handleListElement(_parseListInlineElement(keyType));
  //   return key.substring(0, key.length - 2);
  // } else if (keyType.isBool) {
  //   return '$FakerInstanceName.$FakerRandomGeneratorMethod.boolean()';
  // } else if (keyType.isMap) {
  //   final key = _parseMapInlineElement(keyType);
  //   return key.substring(0, key.length - 2);
  // }
  return '$keyType.fakerable()';
}

String _valueGenerator(String valueType) {
  // if (valueType.isInt) {
  //   return '$FakerInstanceName.$FakerRandomGeneratorMethod.integer(0, min: 100),';
  // } else if (valueType.isDouble) {
  //   return '$FakerInstanceName.$FakerRandomGeneratorMethod.decimal(),';
  // } else if (valueType.isString) {
  //   return 'faker.randomGenerator.string(20, min: 0),';
  // } else if (valueType.isList) {
  //   return '${_handleListElement(_parseListInlineElement(valueType))}';
  // } else if (valueType.isBool) {
  //   // return _handleBoolField();
  // } else if (valueType.isMap) {
  //   return _parseMapInlineElement(valueType);
  // }
  return '$valueType.fakerable(),';
}
