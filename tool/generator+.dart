library fegoci.generator_plus;

import 'package:generator_plus/generator_plus_cli.dart';
import 'package:generator_plus/generator_plus.dart';
import 'package:fegoci/generator+/generators.dart';
import 'package:fegoci/generator+/annotations.dart';

import "./generator+/generators/model.dart";
//@generationBefore("new-generator-import")

class FegociGeneratorPlus extends GeneratorPlus {
  FegociGeneratorPlus() {
    @generationAssignment("new-generator", append: true)
    List<Generator> generators = [
      new AnnotationsGenerator(),
      new GeneratorsGenerator(),
      new ModelGenerator()
    ];
    addGenerators(generators);
  }
}

main(args) => generatorPlusCli(new FegociGeneratorPlus(), args);
