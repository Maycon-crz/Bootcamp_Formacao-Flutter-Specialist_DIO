import 'package:calculadora_imc_flutter/pages/historic_imc_page.dart';
import 'package:calculadora_imc_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int posicaoPagina = 0;
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                HomePage(),
                HistoricImcPage(),
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
              ]),
        ],
      ),
    );
  }
}
