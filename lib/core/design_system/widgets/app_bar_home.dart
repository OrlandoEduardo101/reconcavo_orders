import 'package:reconcavo_orders/core/design_system/design_system.dart';
import 'package:reconcavo_orders/core/design_system/design_system.dart';

import '../styles/colors_app.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({super.key});

  @override
  Size get preferredSize {
    return const Size.fromHeight(98);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AppBar(
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 72,
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.menu_rounded,
                  color: ColorsAppLight.white,
                  size: 30,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
            Image.asset(
              'assets/image/logo_white.png',
              height: size.height * 0.068,
              width: size.width * 0.25,
            ),
          ],
        ),
      ),
    );
  }
}
