import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  //Parametros públicos com "final"
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() quandoResponder;

  //Construtor nomeado
  // ignore: use_key_in_widget_constructors
  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['respostas']
        : [];
    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((t) => Resposta(t, quandoResponder)).toList(),
      ],
    );
  }
}