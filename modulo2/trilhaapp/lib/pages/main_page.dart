import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/card_page.dart';
import 'package:trilhaapp/pages/image_assets.dart';
import 'package:trilhaapp/pages/list_view_h.dart';
import 'package:trilhaapp/pages/list_view_horizontal_page.dart';
import 'package:trilhaapp/pages/tarefa_page.dart';
import 'package:trilhaapp/shared/widgets/custom_drawer.dart';

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
    return Scaffold(
        appBar: AppBar(
          title: const Text("Meu App"),
        ),
        drawer: const CustomDrawer(),
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
                  CardPage(),
                  ImageAssetsPage(),
                  ListViewPage(),
                  ListViewHorizontal(),
                  TarefaPage(),
                ],
              ),
            ),
            BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
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
                  BottomNavigationBarItem(
                    label: "Pag4",
                    icon: Icon(Icons.image),
                  ),
                  BottomNavigationBarItem(
                    label: "Tarefas",
                    icon: Icon(Icons.list),
                  ),
                ])
          ],
        ));
  }
}
