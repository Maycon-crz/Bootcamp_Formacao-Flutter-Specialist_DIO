class Pessoa {
  Pessoa(String nome, String endereco) {
    _nome = nome;
    _endereco = endereco;
  }

  String _nome = ""; //Tornando privado ou seja encapsulando
  String _endereco = "";

  void setNome(String nome) {
    _nome = nome;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  String getNome() {
    return _nome;
  }

  String getEndereco() {
    return _endereco;
  }

  String toString() {
    return {"Nome": _nome, "Endereço": _endereco}.toString();
  }
}
