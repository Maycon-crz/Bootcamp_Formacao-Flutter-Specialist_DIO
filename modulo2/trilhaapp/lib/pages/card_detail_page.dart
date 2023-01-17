import 'package:flutter/material.dart';
import 'package:trilhaapp/model/card_detail_model.dart';

class CardDetailPage extends StatelessWidget {
  final CardDetailModel? cardDetailModel;
  const CardDetailPage({Key? key, this.cardDetailModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'dash',
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.blue),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: ListView(
            children: [
              Row(
                children: [
                  Image.network(
                    "https://www.recicladarte.com/theme/img/parceiros/logos/61917746a6699__logo_recicladarte.jpg",
                    height: 60,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Meu card",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Expanded(
                child: const Text(
                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
