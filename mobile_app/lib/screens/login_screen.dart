import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(220, 233, 226, 1),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/sloganSisGeps.png',
              height: 50, // Ajuste conforme necessário
            ),
            SizedBox(height: 40),
            Text(
              'Faça o login na sua conta e tenha acesso ao estoque e a todas as ferramentas do SisGeps',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 60),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Informe o seu e-mail',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 6),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Informa sua Senha',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 6),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  // Navegação para tela de recuperação de senha
                  Navigator.pushNamed(context, '/forgot_password');
                },
                child: Text('Esqueci minha senha', style: TextStyle(color: Colors.blue),),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Adicione aqui a lógica de autenticação
                    Navigator.pushReplacementNamed(context, '/home'); // Exemplo de navegação para a tela inicial
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.blue, // Texto branco
                    padding: EdgeInsets.symmetric(horizontal: 20), // Espaçamento horizontal
                  ),
                  child: Text('Entrar'),
                ),
              ],
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  text: 'Não tem cadastro? ',
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Criar conta',
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Navegação para tela de registro
                          Navigator.pushNamed(context, '/register');
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
