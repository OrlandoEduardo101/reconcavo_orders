import '../../../../../../core/design_system/design_system.dart';

class StockDesktop extends StatelessWidget {
  const StockDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Center(
      child: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 20, // Número total de itens na grade
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Número de colunas
          crossAxisSpacing: 30, // Espaçamento horizontal entre os itens
          mainAxisSpacing: 30, // Espaçamento vertical entre os itens
          childAspectRatio: 26 / 9, // Proporção dos itens na grade
        ),
        itemBuilder: (BuildContext context, int index) {
          // Aqui você pode ajustar a aparência de cada item
          return ButtonWidget(
            title: 'Item ${index + 1}',
            style: TextStyle(color: colorScheme.onSurface, fontSize: 22),
            borderSide: colorScheme.onSurface,
            colorBackground: colorScheme.surface,
            radiusCircular: 12,
          );
          // Container(
          //   decoration: BoxDecoration(
          //     color: Colors.teal,
          //     borderRadius: BorderRadius.circular(15),
          //   ),
          //   child: Center(
          //     child: Text(
          //       'Item ${index + 1}',
          //       style: const TextStyle(color: Colors.white),
          //     ),
          //   ),
          // );
        },
      ),
    );
  }
}
