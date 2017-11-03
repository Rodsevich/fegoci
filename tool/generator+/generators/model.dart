import 'dart:async';
import 'package:generator_plus/generator_plus.dart';

class ModelGenerator extends Generator {
  String get name => "model";
  String get description =>
      "crea un modelo usable entre backend-frontend indistintamente";

  OverridingPolicy get overridePolicy => OverridingPolicy.NEVER;
  List<Dependency> get alwaysNeededDependencies => null;
  Map get startingVariables => null;

  Future execution() {
    generateTemplateDir("tool/generator+/templates/model");
  }
}
