import 'package:calculadora_imc_flutter/model/pessoa.dart';

class ImcConttroller {
  Pessoa? pessoa;
  String? _msg;

  validarImc(String nome, String peso, String altura) {
    if (int.parse(peso) == 0) {
      _msg = "Digite o seu peso";
    }
    if (double.parse(altura) == 0.0) {
      _msg = "Digite a sua altura";
    }
    return _msg;
  }
}
