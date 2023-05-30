import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';

class FakerableClassVisitor extends SimpleElementVisitor<dynamic> {
  String className = '';
  List<FieldElement> fields = [];

  @override
  visitConstructorElement(ConstructorElement element) {
    className = element.returnType.toString();
    return super.visitConstructorElement(element);
  }

  @override
  visitFieldElement(FieldElement element) {
    fields.add(element);
    return super.visitFieldElement(element);
  }
}
