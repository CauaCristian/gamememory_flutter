import 'package:flutter/material.dart';
import '../components/button.dart';
import 'LevelState.dart';

class LevelDoisState extends LevelState {
  List<Color> cores;
  void Function(int) addresposta;
  void Function() piscarsequencia;
  void Function() verificarsequencia;
  int qtdCartas = 16;

  LevelDoisState(
      {required this.addresposta,
      required this.cores,
      required this.piscarsequencia,
      required this.verificarsequencia});
  @override
  int getNcartas(){
    return qtdCartas;
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
                    Button(
                        color: cores[0],
                        function: () {
                          addresposta(0);
                        }),
                    Button(
                        color: cores[4],
                        function: () {
                          addresposta(4);
                        }),
                    Button(
                        color: cores[8],
                        function: () {
                          addresposta(8);
                        }),
                    Button(
                        color: cores[12],
                        function: () {
                          addresposta(12);
                        }),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                        color: cores[1],
                        function: () {
                          addresposta(1);
                        }),
                    Button(
                        color: cores[5],
                        function: () {
                          addresposta(5);
                        }),
                    Button(
                        color: cores[9],
                        function: () {
                          addresposta(9);
                        }),
                    Button(
                        color: cores[13],
                        function: () {
                          addresposta(13);
                        }),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                        color: cores[2],
                        function: () {
                          addresposta(2);
                        }),
                    Button(
                        color: cores[6],
                        function: () {
                          addresposta(6);
                        }),
                    Button(
                        color: cores[10],
                        function: () {
                          addresposta(10);
                        }),
                    Button(
                        color: cores[14],
                        function: () {
                          addresposta(14);
                        }),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                        color: cores[3],
                        function: () {
                          addresposta(3);
                        }),
                    Button(
                        color: cores[7],
                        function: () {
                          addresposta(7);
                        }),
                    Button(
                        color: cores[11],
                        function: () {
                          addresposta(11);
                        }),
                    Button(
                        color: cores[15],
                        function: () {
                          addresposta(15);
                        }),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 100,),
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
                      piscarsequencia();
                    },
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.amber)),
                    child: Text("iniciar")),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                    onPressed: () {
                      verificarsequencia();
                    },
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.amber)),
                    child: Text("finalizar")),
              ),
            ],
          ),
        )
      ],
    );
  }
}
