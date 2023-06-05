import 'dart:math';
import 'package:faker/faker.dart';
import 'package:fakerable_annotations/fakerable_annotations.dart';
import 'book.dart';

part 'user.fakerable.g.dart';

@fakerable
enum Location {
  china,
  usa,
  ja,
  se,
  uk;

  static Location fakerable() => _$LocationFakerable();
}

@fakerable
class User {
  final Book book;
  final Location location;
  final List<Book> books;

  const User({required this.book, required this.location, required this.books});

  factory User.fakerable() => _$UserFakerable();
}
