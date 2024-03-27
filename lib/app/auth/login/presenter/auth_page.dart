import 'package:flutter/material.dart';
import 'package:reconcavo_orders/core/extensions/size_extension.dart';

import 'pages/desktop_auth_page.dart';
import 'pages/mobile_auth_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.isMobile;

    return Scaffold(
      body: isMobile ? const MobileAuthPage() : const DesktopAuthPage(),
    );
  }
}
