import '../../../../../../core/design_system/design_system.dart';

class StockMobile extends StatelessWidget {
  StockMobile({super.key});

  final List<String> items = List<String>.generate(100, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return ListView.builder(
        itemCount: items.length, // Total de itens na lista
        itemBuilder: (context, index) {
          // Construção de cada item
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: ButtonWidget(
              title: 'Item ${index + 1}',
              height: 100,
              style: TextStyle(color: colorScheme.onSurface, fontSize: 22),
              borderSide: colorScheme.onSurface,
              colorBackground: colorScheme.surface,
              radiusCircular: 12, // Texto do item
              onPressed: () {
                // Ação ao tocar no item
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Você selecionou ${items[index]}'),
                  ),
                );
              },
            ),
          );
        });
  }
}
