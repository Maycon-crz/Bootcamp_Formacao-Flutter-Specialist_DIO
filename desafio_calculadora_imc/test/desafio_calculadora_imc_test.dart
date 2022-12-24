import 'package:desafio_calculadora_imc/desafio_calculadora_imc.dart';
import 'package:desafio_calculadora_imc/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    DesafioCalculadoraImc calculadora = DesafioCalculadoraImc();
    Pessoa pessoa = Pessoa();
    pessoa.setNome("Maycon");
    pessoa.setAltura(1.70);
    pessoa.setPeso(60);
    expect(calculadora.calculoDeIMC(pessoa).getImc(), 20.7612);
  });
}
