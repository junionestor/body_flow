import 'package:body_flow/home_page.dart';
import 'package:body_flow/tipos_page.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State <BottomNavigation> createState() => BottomNavigationState();
}

class BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 1;

  final List<Widget> _paginas = const [
    HomePage(),
    TiposdeExercicios(),
  ];

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

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.fitness_center),
          label: 'Exercícios',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _itemClicado,
    );
  }
}
