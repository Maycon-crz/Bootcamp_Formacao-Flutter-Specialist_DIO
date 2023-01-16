import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/card_page.dart';
import 'package:trilhaapp/pages/pagina2.dart';
import 'package:trilhaapp/pages/pagina3.dart';
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
    //////////////////
    //////////////////PAREI EM CONHECENDO O DRAWER!!!
    //////////////////
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
