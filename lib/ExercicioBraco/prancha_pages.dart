import 'package:flutter/material.dart';
import 'package:body_flow/home_page.dart';
import 'package:body_flow/tipos_page.dart';
import 'package:body_flow/ExercicioBraco/exerciciobraco_page.dart';
import 'dart:async';

class Prancha extends StatefulWidget {
  const Prancha({super.key});

  @override
  _Prancha createState() => _Prancha();
}

class _Prancha extends State<Prancha> {
  int _selectedIndex = 0;
  int _temporestante = 300;
  late Timer _tempo;

  final List<Widget> _paginas = [
    HomePage(),
    TiposdeExercicios(),
    ExercicioBraco(),
  ];

  void _itemClicado(int index) {
    setState(() {
      _selectedIndex = index;
    });

    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => _paginas[index]));
  }

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  void startCountdown() {
    const oneSec = const Duration(seconds: 1);
    _tempo = Timer.periodic(
      oneSec,
      (tempo) {
        setState(() {
          if (_temporestante < 1) {
            tempo.cancel();
            Navigator.pop(context);
          } else {
            _temporestante--;
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(int.parse('F87454', radix: 16)).withOpacity(1.0),
      appBar: AppBar(
        title: const Text(
          'Prancha de antebraço',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Roboto-Thin',
          ),
        ),
        backgroundColor: Color(int.parse('E21B10', radix: 16)).withOpacity(1.0),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 7,
              ),
              const Text(
                'Execução do Exercício:',
                style: TextStyle(fontSize: 20, color: Colors.white,fontFamily: 'Roboto-Thin',),
              ),
              const Image(
                  image: AssetImage('assets/images/prancha.webp'),
                  width: 400,
                  height: 400),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(int.parse('E21B10', radix: 16)).withOpacity(1.0)),
                  onPressed: () {
                    _tempo.cancel();
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Color(int.parse('E21B10', radix: 16)).withOpacity(1.0),
                            title: const Text(
                              "Descrição:",
                              style: TextStyle(color: Colors.white,fontFamily: 'Roboto-Thin',),
                            ),
                            content: const Text(
                              'Como fazer: deitar de barriga para baixo e então elevar o corpo, apoiando no chão somente os antebraços e as pontas dos pés, sempre com o abdômen e glúteos contraídos e cabeça e corpo retos, alinhados com a coluna vertebral. Deve-se ficar parada nesta posição o máximo de tempo. Pode-se começar com 30 segundos e ir aumentando o tempo aos poucos. Este exercício não é feito em séries.',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white,fontFamily: 'Roboto-Thin',),
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    startCountdown();
                                  },
                                  child: const Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white,fontFamily: 'Roboto-Thin',),
                                  ))
                            ],
                          );
                        });
                  },
                  child: const Text(
                    'Descrição do Exercício!',
                    style: TextStyle(color: Colors.white, fontSize: 14,fontFamily: 'Roboto-Thin',),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(int.parse('E21B10', radix: 16)).withOpacity(1.0)),
                  onPressed: () {
                    _tempo.cancel();
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Color(int.parse('E21B10', radix: 16)).withOpacity(1.0),
                            title: const Text(
                              "Descanso:",
                              style: TextStyle(color: Colors.white,fontFamily: 'Roboto-Thin',),
                            ),
                            content: const Text(
                              'Descanse o tempo que achar necessário!',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white,fontFamily: 'Roboto-Thin',),
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    startCountdown();
                                  },
                                  child: const Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white,fontFamily: 'Roboto-Thin',),
                                  ))
                            ],
                          );
                        });
                  },
                  child: const Text(
                    'Descanso!',
                    style: TextStyle(color: Colors.white, fontSize: 14,fontFamily: 'Roboto-Thin',),
                  ),
                ),
              ]),
              const Text(
                'Tempo restante do exercícios:',
                style: TextStyle(fontSize: 20, color: Colors.white,fontFamily: 'Roboto-Thin',),
              ),
              Text(
                '$_temporestante segundos',
                style: const TextStyle(fontSize: 20, color: Colors.white,fontFamily: 'Roboto-Thin',),
              ),
            ],
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(int.parse('E21B10', radix: 16)).withOpacity(1.0),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(color: Colors.white,fontFamily: 'Roboto-Thin',),
        unselectedLabelStyle: const TextStyle(color: Colors.grey,fontFamily: 'Roboto-Thin',),
        currentIndex: _selectedIndex,
        onTap: _itemClicado,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Página Inicial',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_gymnastics),
            label: 'Tipos de Exercício',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: 'Exercício de Braço',
          ),
        ],
      ),
    );
  }
}
