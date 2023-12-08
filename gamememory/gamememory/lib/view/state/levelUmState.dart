import 'package:flutter/material.dart';
import '../factory/buttonfactory.dart';
import 'LevelState.dart';

class LevelUmState extends LevelState {
  List<Color> cores;
  void Function(int) addresposta;
  void Function() gerarsequencia;
  void Function() piscarsequencia;
  void Function() verificarsequencia;
  int qtdCartas = 9;
  int level = 1;
  void Function() limparResposta;
  LevelUmState(
      {required this.addresposta,
      required this.cores,
      required this.gerarsequencia,
      required this.piscarsequencia,
      required this.verificarsequencia,
      required this.limparResposta});
  @override
  int getNcartas() {
    return qtdCartas;
  }

  @override
  int getLevel() {
    return level;
  }

  @override
  Widget gerarGame() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
            height: 400,
            width: 400,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonFactory.createButton(cores[0], () {
                    addresposta(0);
                  }),
                  ButtonFactory.createButton(cores[3], () {
                    addresposta(3);
                  }),
                  ButtonFactory.createButton(cores[6], () {
                    addresposta(6);
                  }),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonFactory.createButton(cores[1], () {
                    addresposta(1);
                  }),
                  ButtonFactory.createButton(cores[4], () {
                    addresposta(4);
                  }),
                  ButtonFactory.createButton(cores[7], () {
                    addresposta(7);
                  }),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonFactory.createButton(cores[2], () {
                    addresposta(2);
                  }),
                  ButtonFactory.createButton(cores[5], () {
                    addresposta(5);
                  }),
                  ButtonFactory.createButton(cores[8], () {
                    addresposta(8);
                  }),
                ],
              )
            ]),
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Container(
          height: 70,
          decoration: BoxDecoration(color: Colors.purple.shade900),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                    onPressed: () {
                      gerarsequencia();
                      piscarsequencia();
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.amber)),
                    child: const Text("iniciar")),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: () {
                    verificarsequencia();
                    limparResposta();
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.amber)),
                  child: const Text("finalizar"),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
