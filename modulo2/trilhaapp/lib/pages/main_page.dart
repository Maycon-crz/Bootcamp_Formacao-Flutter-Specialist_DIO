import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/dados_cadastrais.dart';
import 'package:trilhaapp/pages/pagina1.dart';
import 'package:trilhaapp/pages/pagina2.dart';
import 'package:trilhaapp/pages/pagina3.dart';
import 'package:trilhaapp/services/gerador_numero_aleatorio_service.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int numeroGerado = 0;
  int quantidadesDeCliques = 0;
  int posicaoPagina = 0;
  PageController controller = PageController(initialPage: 0);

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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: 10),
                InkWell(
                  child: const Text("Dados Cadastrais"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const DadosCadastrais(texto: "Dados", data: []),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    posicaoPagina = value;
                  });
                },
                children: const [
                  Pagina1(),
                  Pagina2(),
                  Pagina3(),
                ],
              ),
            ),
            BottomNavigationBar(
                onTap: (value) {
                  controller.jumpToPage(value);
                },
                currentIndex: posicaoPagina,
                items: const [
                  BottomNavigationBarItem(
                    label: "Pag1",
                    icon: Icon(Icons.home),
                  ),
                  BottomNavigationBarItem(
                    label: "Pag2",
                    icon: Icon(Icons.home),
                  ),
                  BottomNavigationBarItem(
                    label: "Pag3",
                    icon: Icon(Icons.home),
                  ),
                ])
          ],
        ));
  }
}
