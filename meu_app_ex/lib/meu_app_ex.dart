import 'package:meu_app_ex/exception/nome_invalido_exception.dart';
import 'package:meu_app_ex/models/console_utils.dart';

void execute() {
  print("Bem vindo ao sistema de notas");
  print("Digite o nome do aluno");
  try {
    String nome = ConsoleUtils.lerStringComText("Digite o nome do aluno:");
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } catch (NomeInvalidoException) {
    print(NomeInvalidoException);
  }
}
