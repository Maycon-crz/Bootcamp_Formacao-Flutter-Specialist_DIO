class Aluno {
  String _nome = "";

  final List<double> _notas = [];

  Aluno(String nome) {
    _nome = nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  List<double> getNotas() {
    return _notas;
  }

  void adicionarNota(double nota) {
    _notas.add(nota);
  }
}
