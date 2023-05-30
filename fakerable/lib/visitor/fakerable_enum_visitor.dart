import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';

class FakerableEnumVisitor extends SimpleElementVisitor<dynamic> {
  String className = '';
  List<String> constants = [];

  @override
  visitConstructorElement(ConstructorElement element) {
    className = element.returnType.toString();
    return super.visitConstructorElement(element);
  }

  @override
  visitFieldElement(FieldElement element) {
    if (element.isEnumConstant) {
      constants.add(element.name);
    }
    return super.visitFieldElement(element);
  }
}
