import 'package:flutter/material.dart';
import 'package:reconcavo_orders/core/design_system/components_web/menu_lateral_component.dart';
import 'package:reconcavo_orders/core/design_system/styles/icons_app_icons.dart';
import 'package:reconcavo_orders/routes.dart';
import 'package:routefly/routefly.dart';

class AdministrativeDashboardMobile extends StatefulWidget {
  const AdministrativeDashboardMobile({super.key, required this.child});
  final Widget child;

  @override
  State<AdministrativeDashboardMobile> createState() => _AdministrativeDashboardMobileState();
}

class _AdministrativeDashboardMobileState extends State<AdministrativeDashboardMobile> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final theme = Theme.of(context);
    final colorSceme = theme.colorScheme;
    return Scaffold(
      body: widget.child,
      appBar: AppBar(
        // title: const Text('Drawer Demo'),
        backgroundColor: colorSceme.background,
      ),
      drawer: MenuLateralComponent(
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
    );
  }
}
