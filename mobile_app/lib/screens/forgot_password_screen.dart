import 'package:flutter/material.dart';
import 'confirmation_screen.dart'; 

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _emailController = TextEditingController();

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
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Informe o e-mail cadastrado',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
              style: TextStyle(
                fontSize: 16.0, // Tamanho de fonte ajustado para um padrão comum
                fontFamily: 'Roboto',
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Voltar para a tela anterior
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 20.0), // Espaçamento horizontal ajustado
                  ),
                  child: Text(
                    'Cancelar',
                    style: TextStyle(
                      fontSize: 16.0, // Tamanho de fonte ajustado para um padrão comum
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navegar para a tela de confirmação
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConfirmationScreen(email: _emailController.text.trim()),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 20.0), // Espaçamento horizontal ajustado
                  ),
                  child: Text(
                    'Enviar',
                    style: TextStyle(
                      fontSize: 16.0, // Tamanho de fonte ajustado para um padrão comum
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
