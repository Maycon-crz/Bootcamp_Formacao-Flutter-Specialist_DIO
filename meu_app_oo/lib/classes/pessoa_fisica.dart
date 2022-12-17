import 'package:meu_app_oo/classes/pessoa.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

class PessoaFisica extends Pessoa {
  PessoaFisica(
      String nome, String endereco, String cpf, TipoNotificacao tipoNotificacao)
      : super(nome, endereco, tipoNotificacao: TipoNotificacao.NENHUM) {
    //Com o super você chama o construtor de pessoa e "cria uma pessoa"
    _cpf = cpf;
  }

  String _cpf = "";

  void setCPF(String cpf) {
    _cpf = cpf;
  }

  String getCPF() {
    return _cpf;
  }

  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Endereço": getEndereco(),
      "cpf": _cpf,
      "TipoNotificacao": getTipoNotificacao(),
    }.toString();
    //Usando ( getNome() ) você consegue acessar o get da classe estendida e returnar o dados dela
  }
}
