import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  //const Questao({ Key? key }) : super(key: key);

  final String texto;

  // ignore: use_key_in_widget_constructors
  const Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
        ),
    );
  }
}