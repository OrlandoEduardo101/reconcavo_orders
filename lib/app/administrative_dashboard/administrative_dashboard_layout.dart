import 'package:flutter/material.dart';
import 'package:reconcavo_orders/core/extensions/size_extension.dart';
import 'package:routefly/routefly.dart';

import 'presenter/pages/administrative_dashboard_desktop.dart';
import 'presenter/pages/administrative_dashboard_mobile.dart';

class AdministrativeDashboardLayout extends StatelessWidget {
  const AdministrativeDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.isMobile;
    const outlet = RouterOutlet();
    return Scaffold(
      body: isMobile
          ? const AdministrativeDashboardMobile(
              child: outlet,
            )
          : const AdministrativeDashboardDesktop(
              child: outlet,
            ),
    );
  }
}
