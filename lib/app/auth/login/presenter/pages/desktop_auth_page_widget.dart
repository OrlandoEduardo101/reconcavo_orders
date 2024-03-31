import 'package:flutter/material.dart';

import 'auth_page_interface.dart';

class DesktopAuthPage extends StatelessWidget implements IAuthPage {
  const DesktopAuthPage({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.onPressed,
  });

  @override
  final TextEditingController emailController;
  @override
  final TextEditingController passwordController;
  @override
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    // A cor de fundo da tela parece ser um tom claro de verde.
    Size size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.primaryContainer,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: colorScheme.surface, // Fundo do container de login
            borderRadius: BorderRadius.circular(12.0), // Arredonda os cantos do container
          ), // Fundo do container de login
          constraints: const BoxConstraints(
            minWidth: 400,
            maxWidth: 600,
            minHeight: 400,
            maxHeight: 600,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min, // Minimiza o tamanho da coluna ao conteúdo interno
            children: <Widget>[
              Container(
                color: colorScheme.primaryContainer,
                // height: size.height * 0.18,
                // width: size.width * 0.20,
                child: Center(
                  child: Image.asset(
                    'widget.imageLogo',
                    height: size.height * 0.06,
                    width: size.width * 0.08,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'insira seu email',
                  border: OutlineInputBorder(), // Adiciona borda ao redor do campo de texto
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: 'insira sua senha',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                child: const Text('Entrar'),
                onPressed: () {
                  // Ação quando o botão é pressionado
                  onPressed?.call();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
