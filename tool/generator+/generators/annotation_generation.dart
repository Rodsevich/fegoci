import 'dart:async';
import 'dart:io';

import 'package:generator_plus/generator_plus.dart';

class AnnotationGenerator extends Generator {
  String get name => "annotation";
  String get description =>
      "Generates an annotation that could be used to generate code in the annotated files";

  List<Dependency> get alwaysNeededDependencies => null;
  OverridingPolicy get overridePolicy => OverridingPolicy.ALWAYS;
  Map get startingVariables => null;

  Future execution() {}
}
