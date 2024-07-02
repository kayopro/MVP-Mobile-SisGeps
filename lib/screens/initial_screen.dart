import 'package:flutter/material.dart';
import 'login_screen.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SisGeps'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text('Entrar na conta SisGeps'),
            ),
            Text('Clique para acessar ou criar sua conta SisGeps'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook),
                SizedBox(width: 10),
                Icon(Icons.instagram),
                SizedBox(width: 10),
                Icon(Icons.youtube),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
