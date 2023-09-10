import 'dart:io';

class ConsoleUtils {
  static String lerString() {
    return stdin.readLineSync() ?? "";
  }

  static double lerDouble(String message) {
    double number;
    do {
      var value = lerString();
      try {
        number = double.parse(value);
        return number;
      } catch (e) {
        print("Valor inválido!");
        print(message);
      }
    } while (true);
  }
}
