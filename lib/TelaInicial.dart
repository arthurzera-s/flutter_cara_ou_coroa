import 'package:flutter/material.dart';
import 'package:cara_ou_coroa/TelaJogo.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  void _irParaTelaJogo() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaJogo()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff61bd86),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("imagens/logo.png"),
          GestureDetector(
            child: Image.asset("imagens/botao_jogar.png"),
            onTap: _irParaTelaJogo,
          )
        ],
      ),
    );
  }
}
