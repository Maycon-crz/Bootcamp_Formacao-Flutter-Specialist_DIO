import 'package:calculadora_imc_flutter/model/Pessoa.dart';

class ImcConttroller {
  String? nome;
  int? peso;
  double? altura;
  double? imc;

  ImcConttroller(this.nome, this.peso, this.altura, this.imc) {
    validarImc();
  }

  validarImc() {
    if (nome == "") {}
  }
}
