import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DadosCadastrais extends StatefulWidget {
  const DadosCadastrais({Key? key}) : super(key: key);

  @override
  State<DadosCadastrais> createState() => _DadosCadastraisState();
}

class _DadosCadastraisState extends State<DadosCadastrais> {
  TextEditingController nomeController = TextEditingController(text: "");
  final datePickerController = TextEditingController(text: "");

  DateTime? dataNascimento;

  Text returnText(String texto) {
    return Text(
      texto,
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            returnText("Nome"),
            TextFormField(
              controller: nomeController,
            ),
            returnText("Data de Nascimento"),
            TextFormField(
              controller: datePickerController,
              readOnly: true,
              onTap: () async {
                var data = await showDatePicker(
                  context: context,
                  initialDate: DateTime(2000, 1, 1),
                  firstDate: DateTime(1900, 1, 1),
                  lastDate: DateTime(2023, 10, 23),
                );
                if (data != null) {
                  datePickerController.text = data.toString();
                  dataNascimento = data;
                }
              },
            ),
            TextButton(
                onPressed: () {
                  print(dataNascimento.toString());
                },
                child: const Text("Salvar")),
          ],
        ),
      ),
    );
  }
}
