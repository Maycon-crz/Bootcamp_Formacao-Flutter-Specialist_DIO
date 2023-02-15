import 'package:calculadora_imc_flutter/controller/imc_conttroller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  ImcConttroller imcConttroller = ImcConttroller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de IMG'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(border: Border.all(width: 3)),
        child: Column(
          children: [
            const Text("Indice de Massa Corporal"),
            Container(height: 30),
            const Text("Peso"),
            TextFormField(
              controller: pesoController,
              decoration: stylesOfInputs,
            ),
            Container(height: 30),
            const Text("Altura"),
            TextFormField(
              controller: alturaController,
              decoration: stylesOfInputs,
            ),
            Container(height: 30),
            ElevatedButton(
              onPressed: () {
                print(imcConttroller.validarImc(
                    "Nome", pesoController.text, alturaController.text));
              },
              child: const Text("Calcular IMC"),
            ),
          ],
        ),
      ),
    );
  }
}

InputDecoration stylesOfInputs = InputDecoration(
  fillColor: Colors.white,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25.0),
    borderSide: const BorderSide(),
  ),
);
