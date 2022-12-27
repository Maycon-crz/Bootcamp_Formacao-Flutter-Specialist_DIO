import 'package:desafio_calculadora_imc/pessoa.dart';

class DesafioCalculadoraImc {
  Pessoa calculoDeIMC(Pessoa pessoa) {
    double imc;
    imc = pessoa.getPeso() / (pessoa.getAltura() * pessoa.getAltura());
    imc = double.parse(imc.toStringAsFixed(1));
    pessoa.setImc(imc);
    return pessoa;
  }
}
