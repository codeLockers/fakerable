library fakerable_annotations;

class Fakerable {
  const Fakerable();
}

const fakerable = Fakerable();

class FakerableRange {
  static const defaultMin = 10;
  static const defaultMax = 10;

  final int min;
  final int max;

  const FakerableRange(
      {this.min = FakerableRange.defaultMin,
      this.max = FakerableRange.defaultMax});
}

class FakerableValue<T> {
  final T value;
  const FakerableValue(this.value);
}

//--------------
class FakerableInline {
  const FakerableInline();
}

const fakerableInline = FakerableInline();

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
