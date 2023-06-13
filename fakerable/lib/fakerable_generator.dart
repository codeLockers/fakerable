import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:fakerable/visitor/fakerable_class_visitor.dart';
import 'package:fakerable_annotations/fakerable_annotations.dart';
import 'package:source_gen/source_gen.dart';
import 'package:path/path.dart' as p;
import 'fakerable_core.dart';

part 'handler/fakerable_list_handler.dart';
part 'handler/fakerable_string_handler.dart';
part 'handler/fakerable_double_handler.dart';
part 'handler/fakerable_int_handler.dart';
part 'handler/fakerable_bool_handler.dart';
part 'handler/fakerable_object_handler.dart';
part 'handler/fakerable_map_handler.dart';
part 'handler/fakerable_enum_handler.dart';
part 'handler/fakerable_class_handler.dart';
part 'handler/fakerable_date_handler.dart';

class FakerableGenerator extends GeneratorForAnnotation<Fakerable> {
  final List<String?> _alreadyHandleFiles = [];

  bool _isFileAlreadyHandle(String? file) {
    return _alreadyHandleFiles.contains(file);
  }

  @override
  generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    final classBuffer = StringBuffer();
    final file = element.location?.components.first;
    if (!_isFileAlreadyHandle(file)) {
      classBuffer.writeln('part of \'${p.basename(buildStep.inputId.path)}\';');
      classBuffer.writeln('');
    }
    _alreadyHandleFiles.add(file);

    switch (FakerableType.value(element.kind.name.toLowerCase())) {
      case FakerableType.fakerableClass:
        classBuffer.writeln(_handleClassElement(element));
        break;
      case FakerableType.fakerableEnum:
        classBuffer.writeln(_handleEnumElement(element));
        break;
    }
    return classBuffer.toString();
  }
}
