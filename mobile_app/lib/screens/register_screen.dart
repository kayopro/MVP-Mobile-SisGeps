import 'package:flutter/material.dart';

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
    return Scaffold(
      backgroundColor: Color.fromRGBO(220, 233, 226, 1),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/sloganSisGeps.png', height: 50,),
            SizedBox(height: 60),
            Text('Crie uma nova conta e gerencie o seu estoque através das ferramentas do SisGeps'),
            SizedBox(height: 40),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nome da empresa', border: OutlineInputBorder(),),
            ),
            SizedBox(height: 4),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'E-mail', border: OutlineInputBorder(),),
            ),
            SizedBox(height: 4),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Senha', border: OutlineInputBorder(),),
              obscureText: true,
            ),
            SizedBox(height: 4),
            TextField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(labelText: 'Repetir Senha', border: OutlineInputBorder(),),
              obscureText: true,
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.blue, // Texto branco
                    padding: EdgeInsets.symmetric(horizontal: 20), // Espaçamento horizontal
                  ),
                  child: Text('Cancelar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Adicione lógica de cadastro aqui
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.blue, // Texto branco
                    padding: EdgeInsets.symmetric(horizontal: 20), // Espaçamento horizontal
                  ),
                  child: Text('Cadastrar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
