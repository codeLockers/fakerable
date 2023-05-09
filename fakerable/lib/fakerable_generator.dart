import 'dart:math';

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:fakerable/fakerable_visitor.dart';
import 'package:fakerable_annotations/fakerable_annotations.dart';
import 'package:source_gen/source_gen.dart';
import 'package:path/path.dart' as p;
import 'package:faker/faker.dart';

import 'fakerable_core.dart';

part 'fakerable_list_handler.dart';
part 'handler/fakerable_string_handler.dart';
part 'handler/fakerable_double_handler.dart';
part 'handler/fakerable_int_handler.dart';
part 'handler/fakerable_bool_handler.dart';
part 'handler/fakerable_object_handler.dart';
part 'fakerable_map_handler.dart';

class FakerableGenerator extends GeneratorForAnnotation<Fakerable> {
  final Faker faker = Faker();

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
        'final $FakerClassName $FakerInstanceName = $FakerClassName();');
    classBuffer.writeln('return ${visitor.className}(');

    for (var field in visitor.fields) {
      classBuffer.writeln('${field.name}: ${_handleField(field)}');
    }

    classBuffer.writeln(');');
    classBuffer.writeln('}');
    return classBuffer.toString();
  }

  String _handleField(FieldElement field) {
    if (field.type.isDartCoreInt) {
      return _handleIntField(field).commable;
    } else if (field.type.isDartCoreDouble) {
      return _handleDoubleField(field).commable;
    } else if (field.type.isDartCoreBool) {
      return _handleBoolField(field).commable;
    } else if (field.type.isDartCoreString) {
      return _handleStringField(field).commable;
    } else if (field.type.isDartCoreList) {
      return _handleListField(field);
    } else if (field.type.isDartCoreMap) {
      return _handleMapField(field);
    }
    return _handleObjectField(field).commable;
  }
}
