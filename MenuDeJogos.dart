import 'package:flutter/material.dart';
import 'jokenpo.dart'; // Importa a tela do Jokenpô
import 'caraoucoroa.dart'; // Importa a tela do Cara ou Coroa
import 'jogodavelha.dart'; // Importa a tela do Jogo da Velha

class MenuDeJogos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu de Jogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Jokenpo()),
                );
              },
              child: Text('Jokenpô'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CaraOuCoroa()),
                );
              },
              child: Text('Cara ou Coroa'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JogoDaVelha()),
                );
              },
              child: Text('Jogo da Velha'),
            ),
          ],
        ),
      ),
    );
  }
}
