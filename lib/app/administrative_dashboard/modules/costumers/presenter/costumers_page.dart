import 'package:reconcavo_orders/app/administrative_dashboard/modules/costumers/presenter/pages/costumers_desktop.dart';
import 'package:reconcavo_orders/app/administrative_dashboard/modules/costumers/presenter/pages/costumers_mobile.dart';
import 'package:reconcavo_orders/core/extensions/size_extension.dart';

import '../../../../../core/design_system/design_system.dart';

class CostumersPage extends StatelessWidget {
  const CostumersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.isMobile;
    return Scaffold(
      body: isMobile ? const CostumersMobile() : const CostumersDesktop(),
    );
  }
}
