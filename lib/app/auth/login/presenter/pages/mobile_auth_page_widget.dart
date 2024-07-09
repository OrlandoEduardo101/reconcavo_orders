import 'package:reconcavo_orders/core/design_system/styles/text_styles.dart';

import '../../../../../core/design_system/design_system.dart';
import '../../interactor/atoms/login_atom.dart';
import 'auth_page_interface.dart';

class MobileAuthPage extends StatelessWidget implements IAuthPage {
  const MobileAuthPage({
    super.key,
    required this.emailController,
    required this.passwordController,
    this.onPressed,
    this.onPressedResetPassword,
  });

  @override
  final TextEditingController emailController;
  @override
  final TextEditingController passwordController;
  @override
  final void Function()? onPressed;
  @override
  final void Function()? onPressedResetPassword;

  @override
  Widget build(BuildContext context) {
    // A cor de fundo da tela parece ser um tom claro de verde.
    Size size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.primaryContainer,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: colorScheme.primaryContainer,
              // height: size.height * 0.18,
              // width: size.width * 0.20,
              child: Center(
                child: Image.asset(
                  'widget.imageLogo',
                  height: size.height * 0.06,
                  // width: size.width * 0.08,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Hero(
              tag: 'LOGIN-CONTAINER-HERO-TAG',
              child: Container(
                // margin: const EdgeInsets.all(12.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: colorScheme.surface, // Fundo do container de login
                  borderRadius: BorderRadius.circular(12.0), // Arredonda os cantos do container
                ),
                constraints: BoxConstraints(
                  // minWidth: 400,
                  maxWidth: size.width,
                  minHeight: size.height * 0.6,
                  maxHeight: size.height * 0.8,
                ),
                // width: 300.0, // Largura fixa para o container
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min, // Minimiza o tamanho da coluna ao conteúdo interno
                  children: <Widget>[
                    Center(
                      child: TextWidget(
                          text: 'Login',
                          style: TextStyles.textMedium.copyWith(
                            fontSize: 32,
                            color: colorScheme.primary,
                          )),
                    ),
                    const SizedBox(height: 20.0),
                    Column(
                      children: [
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
                      ],
                    ),
                    // const SizedBox(height: 8.0),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: isSendingEmail.value ? null : onPressedResetPassword,
                        child: const Text('Esqueci minha senha'),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ButtonWidget(
                          title: 'Entrar',
                          height: 60,
                          borderSide: colorScheme.onPrimary,
                          colorBackground: colorScheme.primary,
                          radiusCircular: 12,
                          style: TextStyle(color: colorScheme.onPrimary, fontSize: 16),
                          onPressed: () {
                            // Ação quando o botão é pressionado
                            onPressed?.call();
                          },
                        ),
                        const SizedBox(height: 20.0),
                        ButtonWidget(
                          title: 'Cadastre-se',
                          height: 60,
                          borderSide: colorScheme.primary,
                          colorBackground: colorScheme.onPrimary,
                          radiusCircular: 12,
                          style: TextStyle(color: colorScheme.primary, fontSize: 16),
                          onPressed: () {
                            // Ação quando o botão é pressionado
                            // onPressed?.call();
                          },
                        ),
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
