import 'package:body_flow/Navigator/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:body_flow/ExercicioAbdomen/abdminalobliquo_pages.dart';
import 'package:body_flow/ExercicioAbdomen/abdominalbicicleta_pages.dart';
import 'package:body_flow/ExercicioAbdomen/abdominalinferior_pages.dart';
import 'package:body_flow/ExercicioAbdomen/abdominaltradicinal_pages.dart';
import 'package:body_flow/ExercicioAbdomen/ponte_pages.dart';

class ExercicioAbdomen extends StatefulWidget {
  const ExercicioAbdomen({Key? key}) : super(key: key);

  @override
  State<ExercicioAbdomen> createState() => _ExercicioAbdomen();
}

class _ExercicioAbdomen extends State<ExercicioAbdomen> {
  void _navigateToPage(Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => page));
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
              image: AssetImage('assets/images/treinoabdominal.webp'),
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
                    page: const AbdominalTradicional(),
                  ),
                  _buildExerciseContainer(
                    imagePath: 'assets/images/abdominalobliquo.webp',
                    title: 'Abdominal Oblíquo',
                    page: const AbdominalObliquo(),
                  ),
                  _buildExerciseContainer(
                    imagePath: 'assets/images/abdominalbicicleta.webp',
                    title: 'Abdominal Bicicleta',
                    page: const AbdominalBicicleta(),
                  ),
                  _buildExerciseContainer(
                    imagePath: 'assets/images/abdominalinferior.webp',
                    title: 'Abdominal Inferior',
                    page: const AbdominalInferior(),
                  ),
                  _buildExerciseContainer(
                    imagePath: 'assets/images/ponte.webp',
                    title: 'Prancha Isométrica ou Ponte',
                    page: const Ponte(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
