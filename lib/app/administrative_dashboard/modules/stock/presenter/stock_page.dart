import 'package:reconcavo_orders/app/administrative_dashboard/modules/stock/presenter/pages/stock_desktop.dart';
import 'package:reconcavo_orders/app/administrative_dashboard/modules/stock/presenter/pages/stock_mobile.dart';
import 'package:reconcavo_orders/core/extensions/size_extension.dart';

import '../../../../../core/design_system/design_system.dart';

class StockPage extends StatelessWidget {
  const StockPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.isMobile;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      body: isMobile ? StockMobile() : const StockDesktop(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.add_circle_outline),
            ),
            Text(
              'Adicionar categoria',
              style: TextStyle(color: colorScheme.onPrimaryContainer, fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
