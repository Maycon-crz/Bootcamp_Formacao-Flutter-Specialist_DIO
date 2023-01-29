import 'package:trilhaapp/model/tarefa.dart';

class TarefaRepository {
  List<Tarefa> _tarefas = [];

  Future<void> adicionar(Tarefa tarefa) async {
    await Future.delayed(const Duration(seconds: 1));
    _tarefas.add(tarefa);
  }

  Future<void> alterar(String id, bool concluido) async {
    await Future.delayed(const Duration(milliseconds: 0));
    _tarefas.where((tarefa) => tarefa.id == id).first.concluido = concluido;
  }

  Future<List<Tarefa>> listarTarefas() async {
    await Future.delayed(const Duration(microseconds: 0));
    return _tarefas;
  }

  Future<List<Tarefa>> listarTarefasNaoConcluidas() async {
    await Future.delayed(const Duration(microseconds: 100));
    return _tarefas.where((tarefa) => !tarefa.concluido).toList();
  }

  Future<void> remove(String id) async {
    await Future.delayed(const Duration(milliseconds: 100));
    _tarefas.remove(_tarefas.where((tarefa) => tarefa.id == id).first);
  }
}
