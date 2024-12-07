import 'package:flutter/material.dart';
import 'FraseDoDia.dart'; // Importa a tela Frase do Dia
import 'Combustivel.dart'; // Importa a tela Combustível
import 'MenuDeJogos.dart'; // Importa a tela Menu de Jogos

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegação entre Telas',
      home: TelaPrincipal(),
      routes: {
        '/fraseDoDia': (context) => FraseDoDia(),
        '/combustivel': (context) => Combustivel(),
        '/menuDeJogos': (context) => MenuDeJogos(),
      },
    );
  }
}

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Principal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/fraseDoDia');
              },
              child: Text('Frase do Dia'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/combustivel');
              },
              child: Text('Combustível'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/menuDeJogos');
              },
              child: Text('Menu de Jogos'),
            ),
          ],
        ),
      ),
    );
  }
}
