import 'dart:async';
import 'package:generator_plus/generator_plus.dart';

class ModelGenerator extends Generator {
  String get name => "model";
  String get description =>
      "crea un modelo usable entre backend-frontend indistintamente";

  OverridingPolicy get overridePolicy => OverridingPolicy.ALWAYS;
  List<Dependency> get alwaysNeededDependencies => null;
  Map get startingVariables => null;

  Future execution() async {
    askForInput("Model name", ".*").then((String name) {
      variablesResolver["name"] = name;
    });
    await generateTemplateDir("tool/generator+/templates/model");
  }
}
