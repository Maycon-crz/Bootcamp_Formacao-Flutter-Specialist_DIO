import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
            const Text("Altura"),
            TextFormField(decoration: stylesOfInputs),
            Container(height: 30),
            const Text("Peso"),
            TextFormField(
              decoration: stylesOfInputs,
            ),
            Container(height: 30),
            ElevatedButton(
              onPressed: () {
                
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
