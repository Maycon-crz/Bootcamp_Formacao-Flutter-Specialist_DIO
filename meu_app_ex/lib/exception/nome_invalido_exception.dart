class NomeInvalidoException implements Exception {
  String error() => "Nome inválido";

  String errorToString() {
    return error().toString();
  }
}
