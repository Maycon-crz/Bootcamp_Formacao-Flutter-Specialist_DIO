import 'package:trilhaapp/model/card_detail_model.dart';

class CardDetailRepository {
  Future<CardDetailModel> get() async {
    await Future.delayed(const Duration(seconds: 3));
    return CardDetailModel(
      id: 1,
      title: "Meu Card",
      text:
          "https://www.recicladarte.com/theme/img/parceiros/logos/61917746a6699__logo_recicladarte.jpg",
      url:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
    );
  }
}
