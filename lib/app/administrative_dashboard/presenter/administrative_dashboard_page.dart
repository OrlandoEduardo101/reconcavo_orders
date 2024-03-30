import 'package:flutter/material.dart';
import 'package:reconcavo_orders/core/extensions/size_extension.dart';

import 'pages/administrative_dashboard_desktop.dart';
import 'pages/administrative_dashboard_mobile.dart';

class AdministrativeDashboardPage extends StatelessWidget {
  const AdministrativeDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.isMobile;
    return Scaffold(
      body: isMobile ? const AdministrativeDashboardMobile() : const AdministrativeDashboardDesktop(),
    );
  }
}
