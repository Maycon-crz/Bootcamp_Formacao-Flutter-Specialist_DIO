class Pessoa {
  String? _nome;
  int? _peso;
  double? _altura;
  double? _imc;

  String getNome() {
    return _nome!;
  }

  int getPeso() {
    return _peso!;
  }

  double getAltura() {
    return _altura!;
  }

  double getImc() {
    return _imc!;
  }

  void setNome(nome) {
    _nome = nome;
  }

  void setPeso(peso) {
    _peso = peso;
  }

  void setAltura(altura) {
    _altura = altura;
  }

  void setImc(imc) {
    _imc = imc;
  }
}
