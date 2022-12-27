import 'dart:convert';
import 'dart:io';

import 'package:desafio_calculadora_imc/desafio_calculadora_imc.dart';
import 'package:desafio_calculadora_imc/pessoa.dart';

void main(List<String> arguments) {
  print("Informe o seu nome:");
  String? nome = stdin.readLineSync(encoding: utf8);
  print("Informe o seu peso:");
  String? setPeso = stdin.readLineSync(encoding: utf8);
  int peso = int.parse(setPeso ?? "0");
  print("Informe a sua altura:");
  String? setAltura = stdin.readLineSync(encoding: utf8);
  double altura = double.parse(setAltura ?? "0");
  DesafioCalculadoraImc calculadora = DesafioCalculadoraImc();
  Pessoa pessoa = Pessoa();
  pessoa.setNome(nome);
  pessoa.setPeso(peso);
  pessoa.setAltura(altura);
  pessoa = calculadora.calculoDeIMC(pessoa);
  print(
      "${pessoa.getNome()} o cálculo do seu IMC resultou em: ${pessoa.getImc()}");
}
