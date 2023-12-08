import 'package:flutter/material.dart';
import '../factory/buttonfactory.dart';
import 'LevelState.dart';

class LevelTresState extends LevelState {
  List<Color> cores;
  void Function(int) addresposta;
  void Function() piscarsequencia;
  void Function() verificarsequencia;
  int qtdCartas = 25;
  int level = 3;
void Function() gerarsequencia;
  LevelTresState(
      {required this.addresposta,
      required this.cores,
      required this.gerarsequencia,
      required this.piscarsequencia,
      required this.verificarsequencia});
  @override
  int getNcartas() {
    return qtdCartas;
  }
  int getLevel() {
    return level;
  }
  @override
  Widget gerarGame() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            height: 400,
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ButtonFactory.createButton(cores[0], () {
                      addresposta(0);
                    }),
                    ButtonFactory.createButton(cores[5], () {
                      addresposta(5);
                    }),
                    ButtonFactory.createButton(cores[10], () {
                      addresposta(10);
                    }),
                    ButtonFactory.createButton(cores[15], () {
                      addresposta(15);
                    }),
                    ButtonFactory.createButton(cores[20], () {
                      addresposta(20);
                    }),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ButtonFactory.createButton(cores[1], () {
                      addresposta(1);
                    }),
                    ButtonFactory.createButton(cores[6], () {
                      addresposta(6);
                    }),
                    ButtonFactory.createButton(cores[11], () {
                      addresposta(11);
                    }),
                    ButtonFactory.createButton(cores[16], () {
                      addresposta(16);
                    }),
                    ButtonFactory.createButton(cores[21], () {
                      addresposta(21);
                    }),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ButtonFactory.createButton(cores[2], () {
                      addresposta(2);
                    }),
                    ButtonFactory.createButton(cores[7], () {
                      addresposta(7);
                    }),
                    ButtonFactory.createButton(cores[12], () {
                      addresposta(12);
                    }),
                    ButtonFactory.createButton(cores[17], () {
                      addresposta(17);
                    }),
                    ButtonFactory.createButton(cores[22], () {
                      addresposta(22);
                    }),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ButtonFactory.createButton(cores[3], () {
                      addresposta(3);
                    }),
                    ButtonFactory.createButton(cores[8], () {
                      addresposta(8);
                    }),
                    ButtonFactory.createButton(cores[13], () {
                      addresposta(13);
                    }),
                    ButtonFactory.createButton(cores[18], () {
                      addresposta(18);
                    }),
                    ButtonFactory.createButton(cores[23], () {
                      addresposta(23);
                    }),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ButtonFactory.createButton(cores[4], () {
                      addresposta(4);
                    }),
                    ButtonFactory.createButton(cores[9], () {
                      addresposta(9);
                    }),
                    ButtonFactory.createButton(cores[14], () {
                      addresposta(14);
                    }),
                    ButtonFactory.createButton(cores[19], () {
                      addresposta(19);
                    }),
                    ButtonFactory.createButton(cores[24], () {
                      addresposta(24);
                    }),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
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
                    child: Text("iniciar")),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                    onPressed: () {
                      verificarsequencia();
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.amber)),
                    child: Text("finalizar")),
              ),
            ],
          ),
        )
      ],
    );
  }
}
