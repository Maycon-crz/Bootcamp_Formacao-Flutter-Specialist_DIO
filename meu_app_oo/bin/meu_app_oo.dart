import 'package:meu_app_oo/classes/pessoa_fisica.dart';
import 'package:meu_app_oo/classes/pessoa_juridica.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

void main(List<String> arguments) {
  var p2 = PessoaFisica("Maycon", "Rua 01", "123123", TipoNotificacao.EMAIL);
  print(p2.toString());

  var p3 = PessoaJuridica("Maycon", "Rua 01", "888888", TipoNotificacao.SMS);
  print(p3.toString());
}
