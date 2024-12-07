import 'package:flutter/material.dart';

class Combustivel extends StatefulWidget {
  @override
  _CombustivelState createState() => _CombustivelState();
}

class _CombustivelState extends State<Combustivel> {
  final TextEditingController _gasolinaController = TextEditingController();
  String _resultado = '';

  void calcularMelhorCombustivel() {
    double? precoGasolina = double.tryParse(_gasolinaController.text);

    if (precoGasolina == null) {
      setState(() {
        _resultado =
            'Por favor, insira um valor válido para o preço da gasolina.';
      });
    } else {
      setState(() {
        if (precoGasolina < 6.0) {
          _resultado = 'Melhor abastecer com Gasolina!';
        } else {
          _resultado = 'Melhor abastecer com Álcool!';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo2.png', // Caminho da imagem
              height: 60, // Altura da imagem
            ),
            SizedBox(width: 10),
            Text(''),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Descubra qual é o melhor combustível para abastecer!',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _gasolinaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Preço da Gasolina (R\$)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calcularMelhorCombustivel,
              child: Text('Calcular'),
            ),
            SizedBox(height: 20),
            Text(
              _resultado,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
