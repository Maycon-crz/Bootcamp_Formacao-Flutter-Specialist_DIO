import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/dados_cadastrais.dart';
import 'package:trilhaapp/pages/login_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    context: context,
                    builder: (BuildContext ct) {
                      return Wrap(
                        children: [
                          ListTile(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            title: const Text("Camera"),
                            leading: const Icon(Icons.camera),
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            title: const Text("Galeria"),
                            leading: const Icon(Icons.album),
                          ),
                        ],
                      );
                    });
              },
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.network(
                        "https://www.recicladarte.com/theme/img/parceiros/logos/61917746a6699__logo_recicladarte.jpg"),
                  ),
                  accountName: const Text("Maycon Nascimento"),
                  accountEmail: const Text("nmaycon304@gmail.com")),
            ),
            const SizedBox(height: 10),
            InkWell(
              child: Row(
                children: const [
                  Icon(Icons.person),
                  Text("Dados Cadastrais"),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DadosCadastrais(),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            InkWell(
              child: Row(
                children: const [
                  Icon(Icons.pan_tool),
                  Text("Termos de uso"),
                ],
              ),
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext ct) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 12),
                        child: SingleChildScrollView(
                          child: Column(
                            children: const [
                              Text(
                                "Termos de uso",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "O dono da Jetflix condenado em 2019 teve julgamento marcado para março de 2020. A sessão, contudo, foi adiada devido à pandemia do novo coronavírus. O processo foi resumido no mês passado; Villarino preferiu admitir o crime, fugindo de uma pena maior do júri. Darryl Julios Polo, ou djppimp, dono do iStreamItAll, outro grande domínio de IPTV pirata, confessou pelos crimes de conspiração por violação de direitos autorais e por lavagem de dinheiro – ele ajudou na operação do Jetflix e fundou o iStreamItAll – e foi sentenciado a quase 5 anos de prisão no mês passado. Fonte: https://tecnoblog.net/453051/programador-de-netflix-pirata-e-condenado-a-prisao-por-violar-copyright/",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              },
            ),
            const Divider(),
            const SizedBox(height: 5),
            InkWell(
              child: Row(
                children: const [
                  Icon(Icons.pan_tool),
                  Text("Sair"),
                ],
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext ct) {
                      return AlertDialog(
                        title: const Text("Meu App"),
                        alignment: Alignment.centerLeft,
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        content: Wrap(
                          children: const [
                            Text("Deseja Realmente sair do aplicativo"),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                            child: const Text("Sim"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Não"),
                          )
                        ],
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
