import 'package:cara_ou_coroa/TelaInicial.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class TelaJogo extends StatefulWidget {
  @override
  _TelaJogoState createState() => _TelaJogoState();
}

class _TelaJogoState extends State<TelaJogo> {
  void _gerarNumeroAleatorio() {
    var _paht;
    Random random = new Random();
    int randomNumber = random.nextInt(2);
  }

  @override
  Widget build(BuildContext context) {
    var _path;
    Random random = new Random();
    int numeroAleatorio = random.nextInt(2);
    if (numeroAleatorio == 0) {
      _path = "imagens/moeda_cara.png";
    } else {
      _path = "imagens/moeda_coroa.png";
    }

    return Container(
      color: Color(0xff61bd86),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(_path),
          GestureDetector(
            child: Image.asset("imagens/botao_voltar.png"),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
