import 'package:test/test.dart';
import 'package:calc_imc_dart/models/pessoa.dart';

void main() {
  group('Pessoa', () {
    test('Calcular IMC', () {
      Pessoa pessoa = Pessoa('John Doe', 70.0, 1.75);
      expect(
          pessoa.calcIMC(), closeTo(22.86, 0.01)); 
    });

    test('Calcular IMC - Altura inválida', () {
      Pessoa pessoa = Pessoa('Jane Doe', 60.0, 0.0);
      expect(() => pessoa.calcIMC(), throwsException);
    });

    test('Calcular IMC - Peso inválido', () {
      Pessoa pessoa = Pessoa('Jim Doe', 1.80, 0.0);
      expect(() => pessoa.calcIMC(), throwsException);
    });
  });
}
