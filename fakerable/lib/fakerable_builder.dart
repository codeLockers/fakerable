import 'package:build/build.dart';
import './fakerable_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder fakerable(BuilderOptions options) =>
    LibraryBuilder(FakerableGenerator(),
        generatedExtension: '.fakerable.g.dart');
