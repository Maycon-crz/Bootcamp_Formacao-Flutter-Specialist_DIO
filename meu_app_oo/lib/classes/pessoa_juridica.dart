import 'package:meu_app_oo/classes/pessoa.dart';

class PessoaJuridica extends Pessoa {
  PessoaJuridica(String nome, String endereco, String cnpj)
      : super(nome, endereco) {
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
    return {"Nome": getNome(), "Endereço": getEndereco(), "cnpj": _cnpj}
        .toString();
  }
}
