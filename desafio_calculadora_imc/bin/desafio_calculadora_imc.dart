import 'package:desafio_calculadora_imc/desafio_calculadora_imc.dart';
import 'package:desafio_calculadora_imc/pessoa.dart';

void main(List<String> arguments) {
  DesafioCalculadoraImc calculadora = DesafioCalculadoraImc();
  Pessoa pessoa = Pessoa();
  pessoa.setNome("Maycon");
  pessoa.setAltura(1.70);
  pessoa.setPeso(60);
  calculadora.calculoDeIMC(pessoa);
}
