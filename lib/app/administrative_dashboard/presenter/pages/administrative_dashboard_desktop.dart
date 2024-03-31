import 'package:flutter/material.dart';
import 'package:reconcavo_orders/core/design_system/components_web/menu_lateral_component.dart';
import 'package:reconcavo_orders/core/design_system/styles/icons_app_icons.dart';
import 'package:reconcavo_orders/routes.dart';
import 'package:routefly/routefly.dart';

class AdministrativeDashboardDesktop extends StatefulWidget {
  const AdministrativeDashboardDesktop({super.key, required this.child});
  final Widget child;

  @override
  State<AdministrativeDashboardDesktop> createState() => _AdministrativeDashboardDesktopState();
}

class _AdministrativeDashboardDesktopState extends State<AdministrativeDashboardDesktop> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final theme = Theme.of(context);
    final colorSceme = theme.colorScheme;

    return Scaffold(
      body: Row(
        children: [
          MenuLateralComponent(
            items: [
              MenuLateralItem(
                title: 'Estoque',
                onPressed: () {
                  Routefly.navigate(routePaths.administrativeDashboard.modules.stock.presenter.stock);
                },
                icon: IconsApp.home,
              ),
              MenuLateralItem(
                title: 'Clientes',
                onPressed: () {
                  Routefly.navigate(routePaths.administrativeDashboard.modules.costumers.presenter.costumers);
                },
                icon: IconsApp.users_2,
              ),
              MenuLateralItem(
                title: 'Pedidos',
                onPressed: () {
                  // Routefly.navigate(routePaths.pages.home.home);
                },
                icon: IconsApp.users_2,
              ),
              MenuLateralItem(
                title: 'Adicionar produtos',
                onPressed: () {
                  // Routefly.navigate(routePaths.pages.home.home);
                },
                icon: IconsApp.users_2,
              ),
            ],
            colorStateBackground: colorSceme.surface,
            colorSelectedBackgound: colorSceme.primary,
            colorStateOutiline: colorSceme.onSurface,
            colorSelectedOutiline: colorSceme.primary,
            colorStateText: colorSceme.onSurface,
            colorSelectedText: colorSceme.onPrimary,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.039,
                left: size.width * 0.05,
                right: size.width * 0.06,
                bottom: size.height * 0.048,
              ),
              child: widget.child,
            ),
          ),
        ],
      ),
    );
  }
}
