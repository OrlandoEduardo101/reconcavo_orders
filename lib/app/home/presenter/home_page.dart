import 'package:flutter/material.dart';
import 'package:reconcavo_orders/core/extensions/size_extension.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.isMobile;

    return Scaffold(
      body: isMobile ? Container() : Container(),
    );
  }
}
