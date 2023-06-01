// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// FakerableGenerator
// **************************************************************************

part of 'user.dart';

User _$UserFakerable() {
  final Faker faker = Faker();
  return User(
    book: Book.values[Random().nextInt(2)],
    location: Location.values[Random().nextInt(4)],
    axis: Axis.values[Random().nextInt(1)],
  );
}
