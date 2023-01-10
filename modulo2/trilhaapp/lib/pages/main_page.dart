import 'package:flutter/material.dart';
import 'package:trilhaapp/services/gerador_numero_aleatorio_service.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int numeroGerado = 0;
  int quantidadesDeCliques = 0;

  @override
  Widget build(BuildContext context) {
    //////////////////
    //////////////////PAREI EM CONHECENDO O DRAWER!!!
    //////////////////
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu App"),
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            SizedBox(height: 10),
            Text("Dados Cadastrais"),
            SizedBox(height: 10),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            numeroGerado = GeradorNumeroAleatorioService.gerarNumeroAleatorio();
            quantidadesDeCliques = quantidadesDeCliques + 1;
          });
        },
        child: const Icon(Icons.add_box),
      ),
    );
  }
}
