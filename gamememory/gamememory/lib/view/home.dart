import 'package:flutter/material.dart';
import 'state/LevelState.dart';
import 'state/levelUmState.dart';
import 'state/levelDoisState.dart';
import 'state/LevelTresState.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Color> cores = List.filled(25, Colors.purple.shade900);
  List<int> sequencia = [0, 1, 3, 8, 6, 5];
  List<int> resposta = [];
  LevelState? levelState;

  @override
  void initState() {
    super.initState();
    levelState = null;
  }

  void mudarcor(int index) async {
    setState(() {
      cores[index] = Colors.black;
    });

    await Future.delayed(Duration(seconds: 1));

    setState(() {
      cores[index] = Colors.purple.shade900;
    });
  }

  Future<void> piscarsequencia() async {
    for (int i = 0; i < sequencia.length; i++) {
      mudarcor(sequencia[i]);

      await Future.delayed(Duration(seconds: 1));
    }
  }

  void addresposta(int numero) {
    resposta.add(numero);
  }

  void verificarsequencia() {
    bool sequenciaCorreta = true;
    if (resposta.length != sequencia.length) {
      sequenciaCorreta = false;
    } else {
      for (int i = 0; i < resposta.length; i++) {
        if (resposta[i] != sequencia[i]) {
          sequenciaCorreta = false;
          break;
        }
      }
    }

    if (sequenciaCorreta) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            // retorna um objeto do tipo Dialog
            return AlertDialog(
              title: new Text("Você ganhou !!!"),
              content: new Text("parabens aumente seu nivel"),
              actions: <Widget>[
                // define os botões na base do dialogo
                new ElevatedButton(
                  child: new Text("Fechar"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            // retorna um objeto do tipo Dialog
            return AlertDialog(
              title: new Text("Você perdeu :("),
              content: new Text("tente novamente para aumentar seu nivel"),
              actions: <Widget>[
                // define os botões na base do dialogo
                new ElevatedButton(
                  child: new Text("Fechar"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
    }
  }

  void setLevel() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // retorna um objeto do tipo Dialog
        return AlertDialog(
          title: new Text("selecione um level"),
          content: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    levelState = LevelUmState(
                      addresposta: addresposta,
                      cores: cores,
                      piscarsequencia: piscarsequencia,
                      verificarsequencia: verificarsequencia,
                    );
                  });
                  Navigator.of(context).pop();
                  setState(() {}); // Force a reconstrução da interface
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                ),
                child: Text("1"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    levelState = LevelDoisState(
                      addresposta: addresposta,
                      cores: cores,
                      piscarsequencia: piscarsequencia,
                      verificarsequencia: verificarsequencia,
                    );
                  });
                  Navigator.of(context).pop();
                  setState(() {}); // Force a reconstrução da interface
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                ),
                child: Text("2"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    levelState = LevelTresState(
                      addresposta: addresposta,
                      cores: cores,
                      piscarsequencia: piscarsequencia,
                      verificarsequencia: verificarsequencia,
                    );
                  });
                  Navigator.of(context).pop();
                  setState(() {}); // Force a reconstrução da interface
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                ),
                child: Text("3"),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jogo Da Memoria"),
        backgroundColor: Colors.purple.shade900,
        actions: <Widget>[
          IconButton(
            // Botão à direita 1
            icon: Icon(Icons.auto_awesome),
            onPressed: () {
              setLevel();
            },
          ),
        ],
      ),
      body: levelState == null
          ? Center(child: Text("selecione um nivel para começar"))
          : levelState!.gerarGame(),
    );
  }
}