import 'package:meu_app_oo/classes/pessoa.dart';
import 'package:meu_app_oo/service/notificacao_interface.dart';

class NotificacaoPushNotification implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando Push para: ${pessoa.getNome()}");
  }
}