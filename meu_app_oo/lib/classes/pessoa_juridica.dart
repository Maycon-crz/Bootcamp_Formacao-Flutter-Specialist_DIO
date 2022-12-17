import 'package:meu_app_oo/classes/pessoa.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa {
  PessoaJuridica(String nome, String endereco, String cnpj,
      TipoNotificacao tipoNotificacao)
      : super(nome, endereco, tipoNotificacao: TipoNotificacao.NENHUM) {
    _cnpj = cnpj;
  }

  String _cnpj = "";

  void setcnpj(String cnpj) {
    _cnpj = cnpj;
  }

  String getcnpj() {
    return _cnpj;
  }

  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Endereço": getEndereco(),
      "cnpj": _cnpj,
      "TipoNotificacao": getTipoNotificacao(),
    }.toString();
  }
}
