import 'package:flutter/material.dart';
import 'dart:math';

class JogoDaVelha extends StatefulWidget {
  @override
  _JogoDaVelhaState createState() => _JogoDaVelhaState();
}

class _JogoDaVelhaState extends State<JogoDaVelha> {
  List<String> _tabuleiro = List.filled(9, '', growable: false);
  String _mensagem = 'Sua vez! Jogue primeiro.';
  bool _jogoAtivo = true;

  void _jogarUsuario(int index) {
    if (_tabuleiro[index].isEmpty && _jogoAtivo) {
      setState(() {
        _tabuleiro[index] = 'X'; // Jogada do usuário
        if (_verificarVitoria('X')) {
          _mensagem = 'Você venceu!';
          _jogoAtivo = false;
        } else if (_tabuleiro.every((element) => element.isNotEmpty)) {
          _mensagem = 'Empate!';
          _jogoAtivo = false;
        } else {
          _mensagem = 'Vez do Computador...';
          _jogarComputador();
        }
      });
    }
  }

  void _jogarComputador() {
    Future.delayed(Duration(milliseconds: 500), () {
      if (_jogoAtivo) {
        int index = _escolhaComputador();
        setState(() {
          _tabuleiro[index] = 'O'; // Jogada do computador
          if (_verificarVitoria('O')) {
            _mensagem = 'O Computador venceu!';
            _jogoAtivo = false;
          } else if (_tabuleiro.every((element) => element.isNotEmpty)) {
            _mensagem = 'Empate!';
            _jogoAtivo = false;
          } else {
            _mensagem = 'Sua vez!';
          }
        });
      }
    });
  }

  int _escolhaComputador() {
    List<int> opcoesDisponiveis = [];
    for (int i = 0; i < _tabuleiro.length; i++) {
      if (_tabuleiro[i].isEmpty) {
        opcoesDisponiveis.add(i);
      }
    }
    return opcoesDisponiveis[Random().nextInt(opcoesDisponiveis.length)];
  }

  bool _verificarVitoria(String jogador) {
    List<List<int>> combinacoes = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (var combinacao in combinacoes) {
      if (combinacao.every((index) => _tabuleiro[index] == jogador)) {
        return true;
      }
    }
    return false;
  }

  void _reiniciarJogo() {
    setState(() {
      _tabuleiro = List.filled(9, '', growable: false);
      _mensagem = 'Sua vez! Jogue primeiro.';
      _jogoAtivo = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jogo da Velha - Contra o Computador'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _mensagem,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            shrinkWrap: true,
            itemCount: 9,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => _jogarUsuario(index),
                child: Container(
                  margin: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0),
                    color: Colors.grey[200],
                  ),
                  child: Center(
                    child: Text(
                      _tabuleiro[index],
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _reiniciarJogo,
            child: Text('Reiniciar Jogo'),
          ),
        ],
      ),
    );
  }
}
