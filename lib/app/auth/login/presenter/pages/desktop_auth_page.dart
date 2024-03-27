import 'package:flutter/material.dart';

class DesktopAuthPage extends StatelessWidget {
  const DesktopAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    // A cor de fundo da tela parece ser um tom claro de verde.
    Color backgroundColor = const Color(0xFFA8D098); // A cor primária fornecida anteriormente

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          color: Colors.white, // Fundo do container de login
          width: 300.0, // Largura fixa para o container
          child: Column(
            mainAxisSize: MainAxisSize.min, // Minimiza o tamanho da coluna ao conteúdo interno
            children: <Widget>[
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'insira seu email',
                  border: OutlineInputBorder(), // Adiciona borda ao redor do campo de texto
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'insira sua senha',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                child: const Text('Entrar'),
                onPressed: () {
                  // Ação quando o botão é pressionado
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
