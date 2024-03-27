import 'package:reconcavo_orders/app/routes.dart';
import 'package:routefly/routefly.dart';

import 'design_system.dart';
import 'styles/colors_app.dart';

class OutletWebPage extends StatefulWidget {
  final Widget widgetList;
  const OutletWebPage({super.key, required this.widgetList});

  @override
  State<OutletWebPage> createState() => _OutletWebPageState();
}

class _OutletWebPageState extends State<OutletWebPage> {
  bool selectedHome = false;
  bool selectedUser = false;
  bool selectedBaseOfQuestion = false;
  bool selectedConfig = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
                          // Routefly.navigate(routePaths.pages.home.home);
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
