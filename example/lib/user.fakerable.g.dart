// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// FakerableGenerator
// **************************************************************************

part of 'user.dart';

User _$UserFakerable() {
  final Faker faker = Faker();
  return User(
    book: Book.fakerable(),
    location: Location.fakerable(),
    books: [
      Book.fakerable(),
      Book.fakerable(),
      Book.fakerable(),
      Book.fakerable(),
    ],
  );
}

Location _$LocationFakerable() =>
    Location.values[Random().nextInt(Location.values.length - 1)];
