import 'package:flutter/material.dart';
import 'package:trilhaapp/shared/app_image.dart';

class ImageAssetsPage extends StatefulWidget {
  const ImageAssetsPage({super.key});

  @override
  State<ImageAssetsPage> createState() => _ImageAssetsPageState();
}

class _ImageAssetsPageState extends State<ImageAssetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(AppImage.img1),
          Image.asset(AppImage.img2),
          Image.asset(AppImage.img3),
        ],
      ),
    );
  }
}
