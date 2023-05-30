part of '../fakerable_generator.dart';

String _handleEnumElement(Element element) {
  final visitor = FakerableEnumVisitor();
  element.visitChildren(visitor);

  final classBuffer = StringBuffer();
  classBuffer.writeln(
      '${FakerableConstants.fakerableConstructor(visitor.className)} {');
  classBuffer.writeln(FakerableConstants.fakerDefination);
  classBuffer.writeln(
      'final index = ${FakerableConstants.integer}(${visitor.constants.length - 1}, min: 0);');
  classBuffer.writeln('return ${visitor.className}.values[index];');
  classBuffer.writeln('}');
  return classBuffer.toString();
}
