import 'package:flutter/material.dart';
import 'package:trilhaapp/shared/app_image.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Image.asset(AppImage.img2),
          title: const Text("Usuario 2"),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Olá, Tudo bem?"),
              Text("08:59"),
            ],
          ),
          trailing: PopupMenuButton<String>(
            onSelected: (menu) {},
            itemBuilder: (BuildContext bc) {
              return const <PopupMenuEntry<String>>[
                PopupMenuItem<String>(value: "opcao1", child: Text("Opção 1")),
                PopupMenuItem<String>(value: "opcao2", child: Text("Opção 2")),
                PopupMenuItem<String>(value: "opcao3", child: Text("Opção 3")),
              ];
            },
          ),
        ),
        Image.asset(AppImage.img1),
        Image.asset(AppImage.img2),
        Image.asset(AppImage.img3),
      ],
    );
  }
}
