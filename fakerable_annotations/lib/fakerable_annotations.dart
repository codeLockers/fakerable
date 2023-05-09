library fakerable_annotations;

class Fakerable {
  const Fakerable();
}

const fakerable = Fakerable();

class FakerableRange<T> {
  // static const T defaultMin = 10;
  // static const T defaultMax = 10;

  final T min;
  final T max;

  const FakerableRange({required this.min, required this.max});
}

class FakerableValue<T> {
  final T value;
  const FakerableValue(this.value);
}

//--------------
// class FakerableInline {
//   const FakerableInline();
// }

// const fakerableInline = FakerableInline();

class FakerableString {
  final int max;
  final int min;
  const FakerableString(this.max, {this.min = 1});
}

class FakerableInt {
  final int max;
  final int min;
  const FakerableInt(this.max, {this.min = 0});
}

class FakerableDouble {
  final double scale;
  final double min;
  const FakerableDouble(this.scale, this.min);
}

class FakerableList {
  final int max;
  final int min;
  const FakerableList(this.max, this.min);
}

enum FakerableValueType {
  image,
  phone,
  email;

  static FakerableValueType type(String name) =>
      FakerableValueType.values.firstWhere((type) => type.name == name);
}

class FakerableValueAAA {
  final FakerableValueType type;

  const FakerableValueAAA(this.type);
}
