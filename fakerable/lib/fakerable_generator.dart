import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:fakerable/fakerable_visitor.dart';
import 'package:fakerable_annotations/fakerable_annotations.dart';
import 'package:source_gen/source_gen.dart';
import 'package:path/path.dart' as p;

class FakerableGenerator extends GeneratorForAnnotation<Fakerable> {
  final fakerClassName = 'Faker';

  @override
  generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    final visitor = FakerableVisitor();
    element.visitChildren(visitor);

    final classBuffer = StringBuffer();
    classBuffer.writeln('part of \'${p.basename(buildStep.inputId.path)}\';');
    classBuffer.writeln('');
    classBuffer
        .writeln('${visitor.className} _\$${visitor.className}Fakerable() {');
    classBuffer.writeln(
        'final $fakerClassName ${fakerClassName.toLowerCase()} = $fakerClassName();');
    classBuffer.writeln('return ${visitor.className}(');

    for (var field in visitor.fields) {
      classBuffer.writeln('${field.name}: ${_handleField(field)}');
    }

    classBuffer.writeln(');');
    classBuffer.writeln('}');
    return classBuffer.toString();
  }

  String _handleField(FieldElement field) {
    if (field.type.isDartCoreString) {
      return _handleStringField(field);
    } else if (field.type.isDartCoreInt) {
      return _handleIntField(field);
    } else if (field.type.isDartCoreDouble) {
      return _handleDoubleField(field);
    }
    return _handleCustomField(field);
  }

  String _handleStringField(FieldElement field) {
    final fakerableValue =
        const TypeChecker.fromRuntime(FakerableValue).firstAnnotationOf(field);
    if (fakerableValue == null) {
      //common string
      final fakerableString = const TypeChecker.fromRuntime(FakerableString)
          .firstAnnotationOf(field);
      if (fakerableString == null) {
        return '${fakerClassName.toLowerCase()}.randomGenerator.string(10),';
      } else {
        final reader = ConstantReader(fakerableString);
        final max = reader.read('max');
        final min = reader.read('min');
        return '${fakerClassName.toLowerCase()}.randomGenerator.string(${max.intValue}, min: ${min.intValue}),';
      }
    } else {
      final reader = ConstantReader(fakerableValue);
      final type = reader.read('type');
      if ((type.objectValue.variable?.type.toString() ?? '') ==
          'FakerableValueType') {
        final FakerableValueType fakerableValueType =
            FakerableValueType.type(type.objectValue.variable?.name ?? '');
        switch (fakerableValueType) {
          case FakerableValueType.email:
            return '${fakerClassName.toLowerCase()}.internet.email(),';
          case FakerableValueType.phone:
            return '${fakerClassName.toLowerCase()}.phoneNumber.us(),';
          case FakerableValueType.image:
            return '${fakerClassName.toLowerCase()}.image.image(),';
        }
      } else {
        return '';
      }
    }
  }

  String _handleIntField(FieldElement field) {
    final fakerableInt =
        const TypeChecker.fromRuntime(FakerableInt).firstAnnotationOf(field);
    if (fakerableInt == null) {
      return '${fakerClassName.toLowerCase()}.randomGenerator.integer(10),';
    } else {
      final reader = ConstantReader(fakerableInt);
      final max = reader.read('max');
      final min = reader.read('min');
      return '${fakerClassName.toLowerCase()}.randomGenerator.integer(${max.intValue}, min: ${min.intValue}),';
    }
  }

  String _handleDoubleField(FieldElement field) {
    final fakerableDouble =
        const TypeChecker.fromRuntime(FakerableDouble).firstAnnotationOf(field);
    if (fakerableDouble == null) {
      return '${fakerClassName.toLowerCase()}.randomGenerator.decimal(),';
    } else {
      final reader = ConstantReader(fakerableDouble);
      final scale = reader.read('scale');
      final min = reader.read('min');
      return '${fakerClassName.toLowerCase()}.randomGenerator.decimal(scale: ${scale.doubleValue}, min: ${min.doubleValue}),';
    }
  }

  String _handleCustomField(FieldElement field) {
    final fakerableInline =
        const TypeChecker.fromRuntime(FakerableInline).firstAnnotationOf(field);
    if (fakerableInline == null) {
      return '';
    } else {
      return '${field.type}.fakerable(),';
    }
  }
}
