## Integration
```dart
dependencies:
  fakerable_annotations:
    git:
      url: https://github.com/codeLockers/fakerable.git
      ref: master
      path: fakerable_annotations/
```

```dart
dependencies:
  fakerable:
    git:
      url: https://github.com/codeLockers/fakerable.git
      ref: master
      path: fakerable/
```

## Example
 1. write model and mark annotation `@fakerable`
    ```dart
    @fakerable
    class Model {
     final int age;
     @FakerableRange<int>(min: 6, max: 19)
     final int ageRange;
     @FakerableValue<int>(77)
     final int ageValue;
     @FakerableRange(min: 16, max: 29)
     @FakerableValue<int>(66)
     final int ageValueRange;
    }
    ```
 2. run `flutter pub run build_runner clean && flutter pub run build_runner build --delete-conflicting-outputs
`

3. will automatatic generate
   ```dart
   part of 'model.dart';

   Model _$ModelFakerable() {
     final Faker faker = Faker();
     return Model(
       age: faker.randomGenerator.integer(5, min: 0),
       ageRange: faker.randomGenerator.integer(19, min: 6),
       ageValue: 77,
       ageValueRange: 66);
   }
   ```
4. add imports on `model.dart`
   ```dart
   import 'package:faker/faker.dart';
   part 'model.fakerable.g.dart';
   ```
5. add factory method
   ```dart
   factory Model.fakerable() => _$ModelFakerable();
   ```
## Documents
<table>
    <tr>
        <th>Class</th><th>Type</th><th>Value</th>
    </tr>
    <tr>
        <td rowspan="5">FakerableRange</td><td>int</td><td>the range of int value</td>
    </tr>
    <tr>
        <td>double</td><td>the range of double value</td>
    </tr>
    <tr>
        <td>String</td><td>the range of string length</td>
    </tr>
    <tr>
        <td>List</td><td>the range of list length</td>
    </tr>
    <tr>
        <td>Map</td><td>the range of Map length</td>
    </tr>
</table>

if config `FakerableValue` will ignore `FakerableRange`
<table>
    <tr>
        <th>Class</th><th>Type</th><th>Value</th>
    </tr>
    <tr>
        <td rowspan="5">FakerableValue</td><td>int</td><td>value of int</td>
    </tr>
    <tr>
        <td>double</td><td>value of double</td>
    </tr>
    <tr>
        <td>String</td><td>value of String</td>
    </tr>
    <tr>
        <td>List</td><td>value of List</td>
    </tr>
    <tr>
        <td>Map</td><td>value of Map</td>
    </tr>
</table>

`FakerableSpecial` only can be applied for `String` value
<table>
    <tr>
        <th>Class</th><th>Type</th><th>Value</th>
    </tr>
    <tr>
        <td rowspan="5">FakerableSpecial</td><td>phone</td><td>us phone number</td>
    </tr>
    <tr>
        <td>image</td><td>image url</td>
    </tr>
    <tr>
        <td>email</td><td>email format string</td>
    </tr>
</table>