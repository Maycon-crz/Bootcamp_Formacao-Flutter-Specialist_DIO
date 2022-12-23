import 'package:meu_app_testes/meu_app_testes.dart' as app;
import 'package:test/test.dart';

void main() {
  test('Calcular o valor do produto com o desconto sem porcentagem', () {
    expect(app.calcularDesconto(1000, 150, false), 850);
  });

  test('Calcular o valor do produto com o desconto com porcentagem', () {
    expect(app.calcularDesconto(1000, 15, true), 850);
  });

  group(
    "Calcular o valor do produto com o desconto",
    () {
      var valuesRoTest = {
        {"valor": 1000, "desconto": 150, "percentual": false}: 850,
        {"valor": 1000, "desconto": 15, "percentual": true}: 850,
      };
      valuesRoTest.forEach(
        (values, expected) {
          test(
            'Entrada: $values, Esperado: $expected',
            () {
              expect(
                app.calcularDesconto(
                    double.parse(values['valor'].toString()),
                    double.parse(values['desconto'].toString()),
                    values['percentual'] == true),
                equals(expected),
              );
            },
          );
        },
      );
    },
  );

//   test("Retornar CEP", () async {
//     var body = await app.retornarCEP('01001-000');
//     print(body);
//     expect(body['bairro'], equals("Praça da Se"));
//   });
}
