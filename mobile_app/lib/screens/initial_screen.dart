import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login_screen.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 7, // Proporção maior para a parte superior
            child: Container(
              color: Color.fromRGBO(220, 233, 226, 1), // Cor da parte superior
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/sloganSisGeps.png',
                      height: 100, // Ajuste a altura da imagem conforme necessário
                      width: MediaQuery.of(context).size.width * 0.8, // Ajuste a largura da imagem conforme necessário
                      fit: BoxFit.contain, // Ajuste para manter a proporção da imagem
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/sloganDelivery.png',
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'A melhor ferramenta para gerenciar o seu estoque de forma inteligente.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14, 
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0.5,
                      color: Colors.black87,),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3, // Proporção menor para a parte inferior
            child: Container(
              color: Colors.white, // Cor da parte inferior
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print("Botão Entrar clicado"); // Log de depuração
                        /*Navigator.pushNamed(context, '/login');*/ //outra opção navegar pra tela de login
                        Navigator.of(context).push(
                          //context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        minimumSize: Size(250, 50), // Tamanho mínimo do botão
                      ),
                      child: Text(
                        'Entrar na conta SisGeps',
                        ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Clique para acessar ou criar sua conta SisGeps',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0.5,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 10),
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
