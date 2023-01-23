import 'package:flutter/material.dart';
import 'package:trilhaapp/shared/app_image.dart';

class ListViewHorizontal extends StatefulWidget {
  const ListViewHorizontal({super.key});

  @override
  State<ListViewHorizontal> createState() => _ListViewHorizontalState();
}

class _ListViewHorizontalState extends State<ListViewHorizontal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Card(
                elevation: 8,
                child: Image.asset(AppImage.img1),
              ),
              Card(
                elevation: 8,
                child: Image.asset(AppImage.img2),
              ),
              Card(
                elevation: 8,
                child: Image.asset(AppImage.img3),
              ),
            ],
          ),
        ),
        Expanded(flex: 3, child: Container()),
      ],
    );
  }
}
