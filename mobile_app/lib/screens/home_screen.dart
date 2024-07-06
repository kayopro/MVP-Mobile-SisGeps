import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(220, 233, 226, 1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/sloganSisGeps.png',
              height: screenHeight * 0.1, // Altura ajustada conforme necessário
            ),
            SizedBox(height: screenHeight * 0.03),
            Text(
              'Bem-vindo ao SisGeps!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenWidth * 0.06, // Tamanho do texto responsivo
                fontFamily: 'Roboto', // Fonte padrão
                color: Colors.black87,
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
          ],
        ),
      ),
    );
  }
}
