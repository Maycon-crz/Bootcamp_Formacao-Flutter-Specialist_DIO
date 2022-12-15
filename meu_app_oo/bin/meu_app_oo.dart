import 'package:meu_app_oo/classes/pessoa.dart';
import 'package:meu_app_oo/classes/pessoa_fisica.dart';
import 'package:meu_app_oo/classes/pessoa_juridica.dart';

void main(List<String> arguments) {
  var p1 = Pessoa("Maycon", "Rua 01");
  print(p1.toString());

  var p2 = PessoaFisica("Maycon", "Rua 01", "123123");
  print(p2.toString());

  var p3 = PessoaJuridica("Maycon", "Rua 01", "888888");
  print(p3.toString());
}
