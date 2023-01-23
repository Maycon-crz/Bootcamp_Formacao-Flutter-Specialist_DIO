import 'package:flutter/cupertino.dart';

class Tarefa {
  String? _id = UniqueKey().toString();
  String? _descricao = "";
  bool? _concluido = true;

  Tarefa(this._descricao, this._concluido);

  String getId() {
    return _id!;
  }

  String getDescricao() {
    return _descricao!;
  }

  bool getConluido() {
    return _concluido!;
  }

  void setConluido(bool concluido) {
    _concluido = concluido;
  }
}
