import 'package:fakerable_annotations/fakerable_annotations.dart';
import 'package:faker/faker.dart';

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
  final int sex;
  final double height;
  final String address;
  final Location location;
  @FakerableRange(min: 2, max: 5)
  final List<Location> locations;
  @FakerableRange(min: 1, max: 3)
  final Map<Location, Location> mapLocation;

  const User(
      {required this.sex,
      required this.height,
      required this.address,
      required this.location,
      required this.locations,
      required this.mapLocation});

  factory User.fakerable() => _$UserFakerable();
}
