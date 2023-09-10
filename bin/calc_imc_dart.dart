import 'package:calc_imc_dart/models/console_utils.dart';
import 'package:calc_imc_dart/models/pessoa.dart';

void main(List<String> arguments) {
  double altura = 0.0;
  print('Digite seu nome: ');
  String nome = ConsoleUtils.lerString();

  print('Digite seu peso em kg: ');
  double peso = ConsoleUtils.lerDouble('Digite seu peso em kg: ');

  print('Digite sua altura em metros: ');
  altura = ConsoleUtils.lerDouble('Digite sua altura em metros: ');

  Pessoa pessoa = Pessoa(nome, peso, altura);

  pessoa.calcularIMCOutput();
}
