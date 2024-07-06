import 'package:flutter/material.dart';
import 'initial_screen.dart'; 
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConfirmationScreen extends StatelessWidget {
  final String email;

  ConfirmationScreen({required this.email});

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
          children: [
            Image.asset(
              'assets/images/sloganSisGeps.png',
              height: screenHeight * 0.1, // Ajuste conforme necessário
            ),
            SizedBox(height: screenHeight * 0.03),
            Text(
              'Recupere a sua conta e redefina sua senha através do email de confirmação que iremos enviar',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0, // Tamanho de fonte ajustado para um padrão comum
                fontFamily: 'Roboto',
                color: Colors.black87,
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white, // Cor de fundo ajustada para branca
              ),
              child: Column(
                children: [
                  Text(
                    'Enviado com sucesso!',
                    style: TextStyle(
                      fontSize: 20.0, // Tamanho de fonte ajustado para um padrão comum
                      fontFamily: 'Roboto',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Icon(
                    FontAwesomeIcons.checkCircle,
                    color: Colors.green,
                    size: 60.0, // Tamanho do ícone ajustado
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Text(
                    'Por favor, verifique a caixa de entrada e de spam do seu e-mail.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0, // Tamanho de fonte ajustado para um padrão comum
                      fontFamily: 'Roboto',
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => InitialScreen()),
                      (route) => false,
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 20.0), // Espaçamento horizontal ajustado
                  ),
                  child: Text('Voltar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
