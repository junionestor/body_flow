import 'package:body_flow/ExercicioAbdomen/exercicioabdomen_pages.dart';
import 'package:body_flow/ExercicioBraco/exerciciobraco_page.dart';
import 'package:body_flow/ExercicioPerna/exercicioperna_pages.dart';
import 'package:body_flow/home_page.dart';
import 'package:flutter/material.dart';

class TiposdeExercicios extends StatefulWidget {
  const TiposdeExercicios({Key? key}) : super(key: key);

  @override
  _TiposdeExerciciosState createState() => _TiposdeExerciciosState();
}

class _TiposdeExerciciosState extends State<TiposdeExercicios> {
  int _selectedIndex = 1;

  final List<Widget> _paginas = const [HomePage(), TiposdeExercicios()];

  void _itemClicado(int index) {
    if (index == _selectedIndex) return;
    setState(() {
      _selectedIndex = index;
    });

    _navigateToPage(_paginas[index]);
  }

  void _navigateToPage(Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => page));
  }

  Widget _buildExercicioContainer(String imagePath, String title, Widget page) {
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
          Image.asset(
            imagePath,
            width: 115,
            height: 115,
          ),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Roboto-Thin',
              ),
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
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Roboto-Thin',
              ),
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
          'Tipos de Exercícios',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Roboto-Thin',
          ),
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
                  _buildExercicioContainer(
                    'assets/images/treinobraco.webp',
                    'Exercícios para braço',
                    ExercicioBraco(),
                  ),
                  _buildExercicioContainer(
                    'assets/images/treinoperna.webp',
                    'Exercícios para perna',
                    ExercicioPerna(),
                  ),
                  _buildExercicioContainer(
                    'assets/images/treinoabdominal.webp',
                    'Exercícios para abdômen',
                    ExercicioAbdomen(),
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
