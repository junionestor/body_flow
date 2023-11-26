import 'package:body_flow/ExercicioAbdomen/abdminalobliquo_pages.dart';
import 'package:body_flow/ExercicioAbdomen/abdominalbicicleta_pages.dart';
import 'package:body_flow/ExercicioAbdomen/abdominalinferior_pages.dart';
import 'package:body_flow/ExercicioAbdomen/abdominaltradicinal_pages.dart';
import 'package:body_flow/ExercicioAbdomen/ponte_pages.dart';
import 'package:flutter/material.dart';
import 'package:body_flow/home_page.dart';
import 'package:body_flow/tipos_page.dart';

class ExercicioAbdomen extends StatefulWidget {
  const ExercicioAbdomen({super.key});

  @override
  _ExercicioAbdomen createState() => _ExercicioAbdomen();
}

class _ExercicioAbdomen extends State<ExercicioAbdomen> {
  int _selectedIndex = 0;

  final List<Widget> _paginas = [
    HomePage(),
    TiposdeExercicios(),
  ];

  void _itemClicado(int index) {
    setState(() {
      _selectedIndex = index;
    });

    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => _paginas[index]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(int.parse('F87454', radix: 16)).withOpacity(1.0),
      appBar: AppBar(
        title: const Text(
          'Exercícios de Abdômen',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Roboto-Thin',
          ),
        ),
        backgroundColor: Color(int.parse('E21B10', radix: 16)).withOpacity(1.0),
        centerTitle: true,
      ),
      body: ListView(children: [
        Center(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Color(int.parse('E93927', radix: 16)).withOpacity(1.0),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(
                          image:
                              AssetImage('assets/images/treinoabdominal.webp'),
                          width: 115,
                          height: 115),
                      const Expanded(
                        child: Text(
                          'Abdominal Tradicional',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: 'Roboto-Thin',),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(int.parse('E21B10', radix: 16)).withOpacity(1.0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    AbdominalTradicional(),
                              ));
                        },
                        child: const Text(
                          'Avançar',
                          style: TextStyle(color: Colors.white, fontSize: 14,fontFamily: 'Roboto-Thin',),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Color(int.parse('E93927', radix: 16)).withOpacity(1.0),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(
                          image:
                              AssetImage('assets/images/abdominalobliquo.webp'),
                          width: 115,
                          height: 115),
                      const Expanded(
                        child: Text(
                          'Abdominal oblíquo',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: 'Roboto-Thin',),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(int.parse('E21B10', radix: 16)).withOpacity(1.0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    AbdominalObliquo(),
                              ));
                        },
                        child: const Text(
                          'Avançar',
                          style: TextStyle(color: Colors.white, fontSize: 14,fontFamily: 'Roboto-Thin',),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Color(int.parse('E93927', radix: 16)).withOpacity(1.0),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(
                          image: AssetImage(
                              'assets/images/abdominalbicicleta.webp'),
                          width: 115,
                          height: 115),
                      const Expanded(
                        child: Text(
                          'Abdominal bicicleta',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: 'Roboto-Thin',),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(int.parse('E21B10', radix: 16)).withOpacity(1.0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    AbdominalBicicleta(),
                              ));
                        },
                        child: const Text(
                          'Avançar',
                          style: TextStyle(color: Colors.white, fontSize: 14,fontFamily: 'Roboto-Thin',),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Color(int.parse('E93927', radix: 16)).withOpacity(1.0),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(
                          image: AssetImage(
                              'assets/images/abdominalinferior.webp'),
                          width: 115,
                          height: 115),
                      const Expanded(
                        child: Text(
                          'Abdominal inferior',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 19.5,fontFamily: 'Roboto-Thin',),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(int.parse('E21B10', radix: 16)).withOpacity(1.0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    AbdominalInferior(),
                              ));
                        },
                        child: const Text(
                          'Avançar',
                          style: TextStyle(color: Colors.white, fontSize: 14,fontFamily: 'Roboto-Thin',),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Color(int.parse('E93927', radix: 16)).withOpacity(1.0),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(
                          image: AssetImage('assets/images/ponte.webp'),
                          width: 115,
                          height: 115),
                      const Expanded(
                        child: Text(
                          'Prancha isométrica ou ponte',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 19.5,fontFamily: 'Roboto-Thin',),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(int.parse('E21B10', radix: 16)).withOpacity(1.0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => Ponte(),
                              ));
                        },
                        child: const Text(
                          'Avançar',
                          style: TextStyle(color: Colors.white, fontSize: 14,fontFamily: 'Roboto-Thin',),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
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
        ],
      ),
    );
  }
}
