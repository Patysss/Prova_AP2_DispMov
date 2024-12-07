import 'package:flutter/material.dart';

class FraseDoDia extends StatefulWidget {
  @override
  _FraseDoDiaState createState() => _FraseDoDiaState();
}

class _FraseDoDiaState extends State<FraseDoDia> {
  // Lista de frases motivacionais
  List<String> _frases = [
    'Acredite em si mesmo!',
    'Você é capaz de realizar seus sonhos!',
    'O sucesso começa com a decisão de tentar!',
  ];

  // Índice da frase atual
  int _indiceFrase = 0;

  // Função para mudar para a próxima frase
  void _mudarFrase() {
    setState(() {
      _indiceFrase =
          (_indiceFrase + 1) % _frases.length; // Atualiza para a próxima frase
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo.png', // Caminho da imagem
              height: 60, // Altura da imagem
            ),
            SizedBox(width: 10),
            Text('Frase do Dia'),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _frases[_indiceFrase], // Exibe a frase com base no índice
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _mudarFrase, // Altera a frase ao clicar no botão
              child: Text('Mudar Frase'),
            ),
          ],
        ),
      ),
    );
  }
}
