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

  void setNome(String? nome) {
    _nome = nome;
  }

  void setPeso(int? peso) {
    _peso = peso;
  }

  void setAltura(double? altura) {
    _altura = altura;
  }

  void setImc(double? imc) {
    _imc = imc;
  }
}
