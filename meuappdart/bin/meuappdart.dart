import 'package:meuappdart/meuappdart.dart' as meuappdart;

void main(List<String> arguments) {
  print('Hello world: ${meuappdart.calculate()}!');
  // String texto = "Bootcamp flutter";
  // int resultado = 0;
  // for (int i = 0; i <= 500; i++) {
  // }
  //------------------------------------------------
  //------------------------------------------------
  var numeros = [1, 2, 9, 50, 45, 85, 90, 74];

  for (var numero in numeros) {
    print(numero);
  }

  numeros.forEach((element) {
    print(" - $element -");
  });
}
