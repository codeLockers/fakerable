import 'package:fakerable_annotations/fakerable_annotations.dart';
import 'package:faker/faker.dart';

part 'book.fakerable.g.dart';

@fakerable
enum Book {
  chinese,
  english,
  math;

  static Book fakerable() => _$BookFakerable();
}
