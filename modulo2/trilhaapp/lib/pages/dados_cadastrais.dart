import 'package:flutter/material.dart';
import 'package:trilhaapp/repositories/linguagens_repository.dart';
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
  var linguagensRepository = LinguagensRepository();
  var nives = [];
  var linguagens = [];
  var linguagensSelecionadas = [];
  var nivelSelecionado = "";
  double salarioEscolhido = 0.0;
  int tempoDeExperiencia = 0;
  bool salvando = false;

  List<DropdownMenuItem> returnItems(int queantidadeMaxima) {
    var items = <DropdownMenuItem>[];
    for (var i = 0; i <= queantidadeMaxima; i++) {
      items.add(
        DropdownMenuItem(value: i, child: Text(i.toString())),
      );
    }
    return items;
  }

  @override
  void initState() {
    nives = nivelRepository.retornaNiveis();
    linguagens = linguagensRepository.retornaLinguagens();
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
      body: salvando
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
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
                            setState(() {
                              nivelSelecionado = value.toString();
                            });
                          },
                        ),
                      )
                      .toList(),
                ),
                returnText("Linguagens preferdas"),
                Column(
                  children: linguagens
                      .map(
                        (e) => CheckboxListTile(
                          title: Text(e),
                          value: linguagensSelecionadas.contains(e),
                          onChanged: (bool? value) {
                            if (value!) {
                              setState(() {
                                linguagensSelecionadas.add(e);
                              });
                            } else {
                              setState(() {
                                linguagensSelecionadas.remove(e);
                              });
                            }
                          },
                        ),
                      )
                      .toList(),
                ),
                returnText(
                    "Pretenção salarial: R\$ ${salarioEscolhido.round()}"),
                Slider(
                  min: 0,
                  max: 14000,
                  value: salarioEscolhido,
                  onChanged: (double value) {
                    setState(() {
                      salarioEscolhido = value;
                    });
                  },
                ),
                returnText("Tempo de experiência"),
                DropdownButton(
                    value: tempoDeExperiencia,
                    isExpanded: true,
                    items: returnItems(50),
                    onChanged: (value) {
                      setState(() {
                        tempoDeExperiencia = int.parse(value.toString());
                      });
                    }),
                TextButton(
                    onPressed: () {
                      salvando = false;
                      if (nomeController.text.trim().length < 3) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("O nome deve ser preenchido!"),
                          ),
                        );
                      }
                      if (dataNascimento == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Data de nascimento inválida"),
                          ),
                        );
                      }
                      if (nivelSelecionado.trim() == "") {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("O nível deve ser selecionado"),
                          ),
                        );
                      }
                      if (linguagensSelecionadas.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                "Deve ser selecionada ao menos 1 linguagem"),
                          ),
                        );
                      }
                      if (tempoDeExperiencia == 0) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content:
                                Text("Deve ter ao menos 1 ano de experiência"),
                          ),
                        );
                      }
                      if (salarioEscolhido == 0) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                "A pretenção salarial deve ser maior que 0"),
                          ),
                        );
                      }
                      setState(() {
                        salvando = true;
                      });
                      Future.delayed(Duration(seconds: 3), () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Dados salvos com sucesso"),
                          ),
                        );
                        setState(() {
                          salvando = false;
                        });
                        Navigator.pop(context);
                      });
                    },
                    child: const Text("Salvar")),
              ],
            ),
    );
  }
}
