import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DadosCadastrais extends StatelessWidget {
  final String texto;
  final List<String> data;
  const DadosCadastrais({Key? key, required this.texto, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(),
    );
  }
}
