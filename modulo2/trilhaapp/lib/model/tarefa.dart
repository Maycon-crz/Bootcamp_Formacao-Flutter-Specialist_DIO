import 'package:flutter/cupertino.dart';

class Tarefa {
  String? _id = UniqueKey().toString();
  String? _descricao = "";
  bool? _concluido = true;

  Tarefa(this._descricao, this._concluido);

  String get id => _id!;
  // String getId() {
  //   return _id!;
  // }
  String get descricao => _descricao!;
  // String getDescricao() {
  //   return _descricao!;
  // }

  bool get concluido => _concluido!;
  // bool getConluido() {
  //   return _concluido!;
  // }

  set concluido(bool concluido) {
    _concluido = concluido;
  }
  // void setConluido(bool concluido) {
  //   _concluido = concluido;
  // }
}
