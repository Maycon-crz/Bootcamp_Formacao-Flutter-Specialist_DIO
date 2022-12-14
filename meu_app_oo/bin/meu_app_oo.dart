import 'package:meu_app_oo/classes/pessoa.dart';

void main(List<String> arguments) {
  var p1 = Pessoa();
  p1.setNome("Maycon");
  p1.setEndereco("Rua 01");
  print(p1.getNome());
}
