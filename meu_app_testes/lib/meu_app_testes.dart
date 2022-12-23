// import 'dart:convert';

// import 'package:http/http.dart' as http;

double calcularDesconto(double valor, double desconto, bool percentual) {
  if (percentual) {
    return valor - ((valor * desconto) / 100);
  }
  return valor - desconto;
}

String convertToUpper(String value) {
  return value.toUpperCase();
}

double retornaValor(double valor) {
  return valor;
}

// dynamic retornarCEP(String cep) async {
//   var uri = Uri.parse("https://viacep.com.br/ws/$cep/json/");
//   var retorno = await http.get(uri);
//   var decodeResponse = jsonDecode(utf8.decode(retorno.bodyBytes)) as Map;
//   return decodeResponse;
// }
