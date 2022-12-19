import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerStringComText(String texto) {
    print(texto);
    return lerString();
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }
}
