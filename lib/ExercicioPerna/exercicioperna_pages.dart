import 'package:body_flow/ExercicioPerna/afundo_pages.dart';
import 'package:body_flow/ExercicioPerna/agachamento_pages.dart';
import 'package:body_flow/ExercicioPerna/agachamentopulo_pages.dart';
import 'package:body_flow/ExercicioPerna/agachamentounilateral_pages.dart';
import 'package:body_flow/ExercicioPerna/stepup_pages.dart';
import 'package:flutter/material.dart';
import 'package:body_flow/home_page.dart';
import 'package:body_flow/tipos_page.dart';

class ExercicioPerna extends StatefulWidget {
  const ExercicioPerna({super.key});

  @override
  _ExercicioPerna createState() => _ExercicioPerna();
}

class _ExercicioPerna extends State<ExercicioPerna> {
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
          'Exercícios de Perna',
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
                          image: AssetImage('assets/images/agachamento.webp'),
                          width: 115,
                          height: 115),
                      const Expanded(
                        child: Text(
                          'Agachamento',
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
                                    Agachamento(),
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
                          image: AssetImage('assets/images/treinoperna.webp'),
                          width: 115,
                          height: 115),
                      const Expanded(
                        child: Text(
                          'Agachamento com pulo',
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
                                    AgachamentoPulo(),
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
                              'assets/images/agachamentounilateral.webp'),
                          width: 115,
                          height: 115),
                      const Expanded(
                        child: Text(
                          'Agachamento unilateral com perna elevada',
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
                                    AgachamentoUnilateral(),
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
                          image: AssetImage('assets/images/stepup.webp'),
                          width: 115,
                          height: 115),
                      const Expanded(
                        child: Text(
                          'Step-up no banco',
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
                                builder: (BuildContext context) => Stepup(),
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
                          image: AssetImage('assets/images/afundo.webp'),
                          width: 115,
                          height: 115),
                      const Expanded(
                        child: Text(
                          'Afundo',
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
                                builder: (BuildContext context) => Afundo(),
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
