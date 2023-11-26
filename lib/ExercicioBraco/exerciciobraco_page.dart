import 'package:body_flow/ExercicioBraco/flexao_pages.dart';
import 'package:body_flow/ExercicioBraco/flexaoinclinada_pages.dart';
import 'package:body_flow/ExercicioBraco/prancha_pages.dart';
import 'package:body_flow/ExercicioBraco/roscadireta_pages.dart';
import 'package:body_flow/ExercicioBraco/roscamartelo_pages.dart';
import 'package:flutter/material.dart';
import 'package:body_flow/home_page.dart';
import 'package:body_flow/tipos_page.dart';

class ExercicioBraco extends StatefulWidget {
  const ExercicioBraco({super.key});

  @override
  State<ExercicioBraco> createState() => _ExercicioBraco();
}

class _ExercicioBraco extends State<ExercicioBraco> {
  void _navigateToPage(Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => page));
  }

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

  Widget _buildExerciseContainer({
    required String imagePath,
    required String title,
    required Widget page,
  }) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: const Color(0xFFE93927).withOpacity(1.0),
        border: Border.all(),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Image(
              image: AssetImage('assets/images/treinobraco.webp'),
              width: 115,
              height: 115),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: 'Roboto-Thin'),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFE21B10).withOpacity(1.0),
            ),
            onPressed: () {
              _navigateToPage(page);
            },
            child: const Text(
              'Avançar',
              style: TextStyle(
                  color: Colors.white, fontSize: 14, fontFamily: 'Roboto-Thin'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(int.parse('F87454', radix: 16)).withOpacity(1.0),
      appBar: AppBar(
        title: const Text(
          'Exercícios de Braço',
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
                    color:
                        Color(int.parse('E93927', radix: 16)).withOpacity(1.0),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(
                          image: AssetImage('assets/images/treinobraco.webp'),
                          width: 115,
                          height: 115),
                      const Expanded(
                        child: Text(
                          'Flexão de braço',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Roboto-Thin',
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color(int.parse('E21B10', radix: 16))
                                    .withOpacity(1.0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    FlexaoBraco(),
                              ));
                        },
                        child: const Text(
                          'Avançar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Roboto-Thin',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                    color:
                        Color(int.parse('E93927', radix: 16)).withOpacity(1.0),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(
                          image:
                              AssetImage('assets/images/flexaoinclinada.webp'),
                          width: 115,
                          height: 115),
                      const Expanded(
                        child: Text(
                          'Flexão de braço inclinada',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Roboto-Thin',
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color(int.parse('E21B10', radix: 16))
                                    .withOpacity(1.0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    FlexaoInclinada(),
                              ));
                        },
                        child: const Text(
                          'Avançar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Roboto-Thin',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                    color:
                        Color(int.parse('E93927', radix: 16)).withOpacity(1.0),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(
                          image: AssetImage('assets/images/prancha.webp'),
                          width: 115,
                          height: 115),
                      const Expanded(
                        child: Text(
                          'Prancha de antebraço',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Roboto-Thin',
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color(int.parse('E21B10', radix: 16))
                                    .withOpacity(1.0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => Prancha(),
                              ));
                        },
                        child: const Text(
                          'Avançar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Roboto-Thin',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                    color:
                        Color(int.parse('E93927', radix: 16)).withOpacity(1.0),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(
                          image: AssetImage('assets/images/roscamartelo.webp'),
                          width: 115,
                          height: 115),
                      const Expanded(
                        child: Text(
                          'Rosca martelo',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.5,
                            fontFamily: 'Roboto-Thin',
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color(int.parse('E21B10', radix: 16))
                                    .withOpacity(1.0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    RoscaMartelo(),
                              ));
                        },
                        child: const Text(
                          'Avançar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Roboto-Thin',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                    color:
                        Color(int.parse('E93927', radix: 16)).withOpacity(1.0),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(
                          image: AssetImage('assets/images/roscadireta.webp'),
                          width: 115,
                          height: 115),
                      const Expanded(
                        child: Text(
                          'Rosca direta',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.5,
                            fontFamily: 'Roboto-Thin',
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color(int.parse('E21B10', radix: 16))
                                    .withOpacity(1.0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    RoscaDireta(),
                              ));
                        },
                        child: const Text(
                          'Avançar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Roboto-Thin',
                          ),
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
        selectedLabelStyle: const TextStyle(
          color: Colors.white,
          fontFamily: 'Roboto-Thin',
        ),
        unselectedLabelStyle: const TextStyle(
          color: Colors.grey,
          fontFamily: 'Roboto-Thin',
        ),
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
