class Pessoa {
  String? _nome;
  int? _peso;
  double? _altura;
  double? _imc;

  Pessoa(this._nome, this._peso, this._altura, this._imc);

  String get nome => _nome!;
  int get peso => _peso!;
  double get altura => _altura!;
  double get imc => _imc!;

  set nome(String nome) {
    _nome = nome;
  }

  set peso(int peso) {
    _peso = peso;
  }

  set altura(double altura) {
    _altura = altura;
  }

  set imc(double imc) {
    _imc = imc;
  }
}
