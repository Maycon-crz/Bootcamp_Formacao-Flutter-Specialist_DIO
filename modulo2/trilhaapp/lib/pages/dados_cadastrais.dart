import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trilhaapp/repositories/nivel_repository.dart';

class DadosCadastrais extends StatefulWidget {
  const DadosCadastrais({Key? key}) : super(key: key);

  @override
  State<DadosCadastrais> createState() => _DadosCadastraisState();
}

class _DadosCadastraisState extends State<DadosCadastrais> {
  TextEditingController nomeController = TextEditingController(text: "");
  final datePickerController = TextEditingController(text: "");
  DateTime? dataNascimento;
  var nivelRepository = NivelRepository();
  var nives = [];
  var nivelSelecionado = "";

  @override
  void initState() {
    nives = nivelRepository.retornaNiveis();
    super.initState();
  }

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
            returnText("Nível de Experiência"),
            Column(
              children: nives
                  .map(
                    (nivel) => RadioListTile(
                      dense: true,
                      title: Text(nivel.toString()),
                      selected: nivelSelecionado == nivel,
                      value: nivel.toString(),
                      groupValue: nivelSelecionado,
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          nivelSelecionado = value.toString();
                        });
                      },
                    ),
                  )
                  .toList(),
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
