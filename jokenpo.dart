import 'package:flutter/material.dart';
import 'dart:math';

class Jokenpo extends StatefulWidget {
  @override
  _JokenpoState createState() => _JokenpoState();
}

class _JokenpoState extends State<Jokenpo> {
  final List<String> _opcoes = ['Pedra', 'Papel', 'Tesoura'];
  String? _escolhaUsuario; // Inicialmente nulo
  String? _escolhaComputador; // Inicialmente nulo
  String _resultado = '';

  void jogar(String escolhaUsuario) {
    // Escolha aleatória do computador
    String escolhaComputador = _opcoes[Random().nextInt(3)];

    // Determina o vencedor
    String resultado;
    if (escolhaUsuario == escolhaComputador) {
      resultado = 'Empate!';
    } else if ((escolhaUsuario == 'Pedra' && escolhaComputador == 'Tesoura') ||
        (escolhaUsuario == 'Papel' && escolhaComputador == 'Pedra') ||
        (escolhaUsuario == 'Tesoura' && escolhaComputador == 'Papel')) {
      resultado = 'Você venceu!';
    } else {
      resultado = 'Você perdeu!';
    }

    // Mapeia a escolha para o nome da imagem correspondente
    String imagemUsuario = '${escolhaUsuario.toLowerCase()}.png';
    String imagemComputador = '${escolhaComputador.toLowerCase()}.png';

    // Atualiza o estado
    setState(() {
      _escolhaUsuario = imagemUsuario;
      _escolhaComputador = imagemComputador;
      _resultado = resultado;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jokenpô'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Escolha sua jogada:',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => jogar('Pedra'),
                  child: Text('Pedra'),
                ),
                ElevatedButton(
                  onPressed: () => jogar('Papel'),
                  child: Text('Papel'),
                ),
                ElevatedButton(
                  onPressed: () => jogar('Tesoura'),
                  child: Text('Tesoura'),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Sua escolha:',
              style: TextStyle(fontSize: 18),
            ),
            _escolhaUsuario != null
                ? Image.asset(
                    'assets/images/$_escolhaUsuario',
                    height: 100,
                  )
                : Text('Faça sua escolha'),
            SizedBox(height: 20),
            Text(
              'Escolha do Computador:',
              style: TextStyle(fontSize: 18),
            ),
            _escolhaComputador != null
                ? Image.asset(
                    'assets/images/$_escolhaComputador',
                    height: 100,
                  )
                : Text('Aguardando...'),
            SizedBox(height: 20),
            Text(
              _resultado,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: _resultado == 'Você venceu!'
                    ? Colors.green
                    : (_resultado == 'Você perdeu!' ? Colors.red : Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
