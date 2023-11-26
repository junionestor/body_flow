import 'package:flutter/material.dart';
import 'package:body_flow/ExercicioAbdomen/abdminalobliquo_pages.dart';
import 'package:body_flow/ExercicioAbdomen/abdominalbicicleta_pages.dart';
import 'package:body_flow/ExercicioAbdomen/abdominalinferior_pages.dart';
import 'package:body_flow/ExercicioAbdomen/abdominaltradicinal_pages.dart';
import 'package:body_flow/ExercicioAbdomen/ponte_pages.dart';
import 'package:body_flow/home_page.dart';
import 'package:body_flow/tipos_page.dart';

class ExercicioAbdomen extends StatefulWidget {
  const ExercicioAbdomen({Key? key}) : super(key: key);

  @override
  State<ExercicioAbdomen> createState() => _ExercicioAbdomen();
}

class _ExercicioAbdomen extends State<ExercicioAbdomen> {
  int _selectedIndex = 0;

  final List<Widget> _paginas = const [
    HomePage(),
    TiposdeExercicios(),
  ];

  void _itemClicado(int index) {
    setState(() {
      _selectedIndex = index;
    });

    Navigator.of(context).push(MaterialPageRoute(builder: (_) => _paginas[index]));
  }

  Widget _buildExerciseContainer({
    required String imagePath,
    required String title,
    required VoidCallback onPressed,
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
          const Image(image: AssetImage('assets/images/treinoabdominal.webp'), width: 115, height: 115),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Roboto-Thin'),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFE21B10).withOpacity(1.0),
            ),
            onPressed: onPressed,
            child: const Text(
              'Avançar',
              style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'Roboto-Thin'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF87454).withOpacity(1.0),
      appBar: AppBar(
        title: const Text(
          'Exercícios de Abdômen',
          style: TextStyle(color: Colors.white, fontFamily: 'Roboto-Thin'),
        ),
        backgroundColor: const Color(0xFFE21B10).withOpacity(1.0),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildExerciseContainer(
                    imagePath: 'assets/images/treinoabdominal.webp',
                    title: 'Abdominal Tradicional',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const AbdominalTradicional(),
                        ),
                      );
                    },
                  ),
                  _buildExerciseContainer(
                    imagePath: 'assets/images/abdominalobliquo.webp',
                    title: 'Abdominal Oblíquo',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const AbdominalObliquo(),
                        ),
                      );
                    },
                  ),
                  _buildExerciseContainer(
                    imagePath: 'assets/images/abdominalbicicleta.webp',
                    title: 'Abdominal Bicicleta',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const AbdominalBicicleta(),
                        ),
                      );
                    },
                  ),
                  _buildExerciseContainer(
                    imagePath: 'assets/images/abdominalinferior.webp',
                    title: 'Abdominal Inferior',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const AbdominalInferior(),
                        ),
                      );
                    },
                  ),
                  _buildExerciseContainer(
                    imagePath: 'assets/images/ponte.webp',
                    title: 'Prancha Isométrica ou Ponte',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const Ponte(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFE21B10).withOpacity(1.0),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(color: Colors.white, fontFamily: 'Roboto-Thin'),
        unselectedLabelStyle: const TextStyle(color: Colors.grey, fontFamily: 'Roboto-Thin'),
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
