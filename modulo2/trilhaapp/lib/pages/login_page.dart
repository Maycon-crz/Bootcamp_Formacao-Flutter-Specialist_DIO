import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 216, 216),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Expanded(child: Container()),
                Expanded(
                  flex: 8,
                  child: Image.network(
                    "https://www.recicladarte.com/theme/img/parceiros/logos/61917746a6699__logo_recicladarte.jpg",
                    height: 155,
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "Já tem cadastro?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const Text("Faça seu login make the change"),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 20,
              alignment: Alignment.center,
              child: Row(
                children: const [
                  Text("Informe seu E-mail"),
                  SizedBox(width: 20),
                  Expanded(child: Text("E-mail")),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 30,
              alignment: Alignment.center,
              child: Row(
                children: const [
                  Text("Informe a senha"),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: Text("senha")),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              color: Colors.green,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 50,
              alignment: Alignment.center,
              child: const Text("Login"),
            ),
            Expanded(child: Container()),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 50,
              alignment: Alignment.center,
              child: const Text("Esquesi minha senha"),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 50,
              alignment: Alignment.center,
              child: const Text("Criar conta"),
            ),
          ],
        ),
      ),
    );
  }
}
