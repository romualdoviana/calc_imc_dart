class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  get nome => _nome;

  set nome(value) => _nome = value;

  get peso => _peso;

  set peso(value) => _peso = value;

  get altura => _altura;

  set altura(value) => _altura = value;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  void calcularIMCOutput() {

    double imc = calcIMC();
    print("");
    print('$_nome seu IMC é ${imc.toStringAsFixed(2)}');
    if (imc < 16) {
      print('Magreza grave');
    } else if (imc >= 16 && imc < 17) {
      print('Magreza moderada');
    } else if (imc >= 17 && imc < 18.5) {
      print('Magreza leve');
    } else if (imc >= 18.5 && imc < 25) {
      print('Saudável');
    } else if (imc >= 25 && imc < 30) {
      print('Sobrepeso');
    } else if (imc >= 30 && imc < 35) {
      print('Obesidade – GRAU I');
    } else if (imc >= 35 && imc < 40) {
      print('Obesidade – GRAU II | Severa');
    } else {
      print('Obesidade – GRAU III | Mórbida');
    }
  }

  double calcIMC() {
    if (_altura <= 0 || _peso <= 0) {
      throw Exception('Altura e peso devem ser maiores que zero.');
    }

    return _peso / (_altura * _altura);
  }
}
