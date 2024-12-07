import 'package:flutter/material.dart';
import 'dart:math';

class CaraOuCoroa extends StatefulWidget {
  @override
  _CaraOuCoroaState createState() => _CaraOuCoroaState();
}

class _CaraOuCoroaState extends State<CaraOuCoroa> {
  final Random _random = Random();
  String _escolhaUsuario = '';
  String _escolhaComputador = '';
  String _resultado = '';
  String _imagem = 'assets/images/sem_imagem.png'; // caminho da imagem da moeda

  // Função para fazer a escolha da moeda e determinar o vencedor
  void _jogar(String escolhaUsuario) {
    // O computador escolhe aleatoriamente entre 'cara' ou 'coroa'
    _escolhaComputador = _random.nextBool() ? 'cara' : 'coroa';

    // Define a imagem com base na escolha do computador
    _imagem = _escolhaComputador == 'cara'
        ? 'assets/images/cara.png'
        : 'assets/images/coroa.png';

    // Verifica se a escolha do jogador está correta
    if (escolhaUsuario == _escolhaComputador) {
      setState(() {
        _escolhaUsuario = escolhaUsuario;
        _resultado = 'Você acertou! A moeda caiu em $_escolhaComputador.';
      });
    } else {
      setState(() {
        _escolhaUsuario = escolhaUsuario;
        _resultado = 'Você errou! A moeda caiu em $_escolhaComputador.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jogo Cara ou Coroa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Escolha "Cara" ou "Coroa"!',
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            // Exibe a imagem da moeda após a jogada
            Image.asset(
              _imagem,
              height: 150,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _jogar('cara'),
                  child: Text('Cara'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => _jogar('coroa'),
                  child: Text('Coroa'),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              _resultado,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
