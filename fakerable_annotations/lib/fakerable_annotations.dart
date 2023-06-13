library fakerable_annotations;

class Fakerable {
  const Fakerable();
}

const fakerable = Fakerable();

class FakerableRange<T> {
  final T min;
  final T max;

  const FakerableRange({required this.min, required this.max});
}

// ignore: constant_identifier_names
const DEFAULT_RANGE = FakerableRange<int>(min: 0, max: 5);

class FakerableValue<T> {
  final T value;
  const FakerableValue(this.value);
}

enum FakerableSpecial {
  image,
  phone,
  email;

  static FakerableSpecial type(String name) =>
      FakerableSpecial.values.firstWhere((type) => type.name == name);
}

class FakerableDate {
  final int year;
  final int month;
  final int day;
  final int hour;
  final int minute;
  final int second;

  const FakerableDate(
      {this.year = 2023,
      this.month = 1,
      this.day = 1,
      this.hour = 0,
      this.minute = 0,
      this.second = 0});
}
