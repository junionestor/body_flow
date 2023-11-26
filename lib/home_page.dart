import 'package:flutter/material.dart';
import 'tipos_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BodyFlow',
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontFamily: 'Roboto-Thin',
          ),
        ),
        backgroundColor: const Color(0xFFE21B10).withOpacity(1.0),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset('assets/images/treinocasa.jpg', fit: BoxFit.cover),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _buildEntrarButton(context),
                const SizedBox(height: 150),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEntrarButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFE21B10).withOpacity(1.0),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => TiposdeExercicios(),
          ),
        );
      },
      child: const SizedBox(
        width: 300,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Entrar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Roboto-Thin',
              ),
            ),
            const SizedBox(width: 4),
            Icon(
              Icons.arrow_circle_right_outlined,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
