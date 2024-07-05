import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login_screen.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: Text('SisGeps'),
      //),
      body: Column(
        children: [
          Expanded(
            flex: 8, // Proporção maior para a parte superior
            child: Container(
              color: Color.fromRGBO(220, 233, 226, 1), // Cor da parte superior
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/sloganSisGeps.png',
                      height: 200, // Ajuste a altura da imagem conforme necessário
                      width: MediaQuery.of(context).size.width * 0.8, // Ajuste a largura da imagem conforme necessário
                      fit: BoxFit.contain, // Ajuste para manter a proporção da imagem
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/sloganDelivery.png',
                      height: 300,
                      //width: MediaQuery.of(context).size.width * 0.8,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'A melhor ferramenta para gerenciar o seu estoque de forma inteligente!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2, // Proporção menor para a parte inferior
            child: Container(
              color: Colors.white, // Cor da parte inferior
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: Colors.blue,
                        minimumSize: Size(290, 50), // Tamanho mínimo do botão
                      ),
                      child: Text('Entrar na conta SisGeps'),
                    ),
                    SizedBox(height: 14),
                    Text(
                      'Clique para acessar ou criar sua conta SisGeps',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          FontAwesomeIcons.instagram,
                          color: Color.fromARGB(255, 188, 14, 2), // Cor personalizada
                        ),
                        SizedBox(width: 10),
                        Icon(
                          FontAwesomeIcons.youtube,
                          color: Colors.red,
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
