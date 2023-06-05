import 'dart:math';
import 'package:fakerable_annotations/fakerable_annotations.dart';

part 'book.fakerable.g.dart';

@fakerable
enum Book {
  chinese,
  english,
  math;

  static Book fakerable() => _$BookFakerable();
}
