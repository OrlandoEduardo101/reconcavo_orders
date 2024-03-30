import 'package:flutter/material.dart';
import 'package:reconcavo_orders/core/design_system/components_web/menu_lateral_component.dart';
import 'package:reconcavo_orders/core/design_system/styles/icons_app_icons.dart';

import '../../../../core/design_system/styles/colors_app.dart';

class AdministrativeDashboardDesktop extends StatefulWidget {
  const AdministrativeDashboardDesktop({super.key});

  @override
  State<AdministrativeDashboardDesktop> createState() => _AdministrativeDashboardDesktopState();
}

class _AdministrativeDashboardDesktopState extends State<AdministrativeDashboardDesktop> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    bool selectedHome = false;
    bool selectedUser = false;
    bool selectedBaseOfQuestion = false;
    bool selectedConfig = false;

    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MenuLateralComponent(
                      iconButtonHome: Icon(
                        IconsApp.home,
                        color: selectedHome == false ? ColorsAppLight.neutral40 : ColorsAppLight.white,
                        size: 20,
                      ),
                      onPressedButtonHome: () {
                        setState(() {
                          selectedHome = !selectedHome;
                          // Routefly.navigate(routePaths.pages.homeClient.home);
                        });
                      },
                      colorStateBackground: ColorsAppLight.white,
                      colorSelectedBackgound: ColorsAppLight.primary,
                      colorStateOutiline: ColorsAppLight.white,
                      colorSelectedOutiline: ColorsAppLight.primary,
                      colorStateText: ColorsAppLight.neutral40,
                      colorSelectedText: ColorsAppLight.white,
                      selectedHome: selectedHome,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.039,
                        left: size.width * 0.05,
                        right: size.width * 0.06,
                        bottom: size.height * 0.048,
                      ),
                      child: const Placeholder(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
