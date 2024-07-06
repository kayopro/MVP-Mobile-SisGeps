import 'package:flutter/material.dart';
import 'confirmation_register_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(220, 233, 226, 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: screenHeight * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/sloganSisGeps.png',
              height: screenHeight * 0.1,
            ),
            SizedBox(height: screenHeight * 0.05),
            Text(
              'Crie uma nova conta e gerencie o seu estoque através das ferramentas do SisGeps',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenWidth * 0.045,
                fontFamily: 'Roboto',
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nome da empresa',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
              style: TextStyle(
                fontSize: screenWidth * 0.045,
                fontFamily: 'Roboto',
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
              style: TextStyle(
                fontSize: screenWidth * 0.045,
                fontFamily: 'Roboto',
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true,
              style: TextStyle(
                fontSize: screenWidth * 0.045,
                fontFamily: 'Roboto',
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            TextField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Repetir Senha',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true,
              style: TextStyle(
                fontSize: screenWidth * 0.045,
                fontFamily: 'Roboto',
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
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
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  ),
                  child: Text(
                    'Cancelar',
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navegar para a tela de confirmação de registro
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConfirmationRegisterScreen(
                          name: _nameController.text.trim(),
                          email: _emailController.text.trim(),
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  ),
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
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
