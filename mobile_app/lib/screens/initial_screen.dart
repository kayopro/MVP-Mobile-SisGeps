import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              color: Color.fromRGBO(220, 233, 226, 1),
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/sloganSisGeps.png',
                      height: screenHeight * 0.15,
                      width: screenWidth * 0.8,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/sloganDelivery.png',
                      height: screenHeight * 0.2,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    'A melhor ferramenta para gerenciar o seu estoque de forma inteligente.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0.5,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(bottom: screenHeight * 0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/login');
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        minimumSize: Size(screenWidth * 0.7, screenHeight * 0.06),
                      ),
                      child: Text(
                        'Entrar na conta SisGeps',
                        style: TextStyle(
                          fontSize: screenWidth * 0.045,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      'Clique para acessar ou criar sua conta SisGeps',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0.5,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blue,
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Icon(
                          FontAwesomeIcons.instagram,
                          color: Color.fromARGB(255, 188, 14, 2),
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Icon(
                          FontAwesomeIcons.youtube,
                          color: Colors.red,
                        ),
                        SizedBox(width: screenWidth * 0.02),
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
