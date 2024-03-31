import 'design_system.dart';

class OutletWebPage extends StatefulWidget {
  final Widget widgetList;
  const OutletWebPage({super.key, required this.widgetList});

  @override
  State<OutletWebPage> createState() => _OutletWebPageState();
}

class _OutletWebPageState extends State<OutletWebPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final colorSceme = theme.colorScheme;
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
                      items: [
                        MenuLateralItem(
                          title: 'Estoque',
                          onPressed: () {
                            // Routefly.navigate(routePaths.pages.home.home);
                          },
                          icon: IconsApp.home,
                        ),
                        MenuLateralItem(
                          title: 'Clientes',
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
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.039,
                        left: size.width * 0.05,
                        right: size.width * 0.06,
                        bottom: size.height * 0.048,
                      ),
                      child: widget.widgetList,
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
