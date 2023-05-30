part of '../fakerable_generator.dart';

String _handleClassElement(Element element) {
  final visitor = FakerableClassVisitor();
  element.visitChildren(visitor);
  final classBuffer = StringBuffer();
  classBuffer
      .writeln('${visitor.className} _\$${visitor.className}Fakerable() {');
  classBuffer.writeln(
      'final ${FakerableConstants.Faker} ${FakerableConstants.faker} = ${FakerableConstants.Faker}();');
  classBuffer.writeln('return ${visitor.className}(');

  for (var field in visitor.fields) {
    classBuffer.writeln('${field.name}: ${_handleClassField(field)}');
  }

  classBuffer.writeln(');');
  classBuffer.writeln('}');
  return classBuffer.toString();
}

String _handleClassField(FieldElement field) {
  if (field.type.isDartCoreInt) {
    return _handleIntField(field).commable;
  } else if (field.type.isDartCoreDouble) {
    return _handleDoubleField(field).commable;
  } else if (field.type.isDartCoreBool) {
    return _handleBoolField(field).commable;
  } else if (field.type.isDartCoreString) {
    return _handleStringField(field).commable;
  } else if (field.type.isDartCoreList) {
    return _handleListField(field).commable;
  } else if (field.type.isDartCoreMap) {
    return _handleMapField(field).commable;
  }
  return _handleObjectField(field.typeName).commable;
}
