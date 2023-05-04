library fakerable_annotations;

class Fakerable {
  const Fakerable();
}

const fakeable = Fakerable();

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

class FakerableValue {
  final FakerableValueType type;

  const FakerableValue(this.type);
}
