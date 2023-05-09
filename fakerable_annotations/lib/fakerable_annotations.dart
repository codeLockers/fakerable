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

//--------------
//--------------
//--------------

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
