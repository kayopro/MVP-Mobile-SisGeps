import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              height: 100, // Ajuste conforme necessário
            ),
            SizedBox(height: 20),
            Text(
              'Bem-vindo ao SisGeps!',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ]
        ),
      )
    );
  }
}