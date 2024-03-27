import '../design_system.dart';

class ListActivityComponent extends StatelessWidget {
  final ScrollController? controller;
  final String numberBook;
  final String dateCreateBook;
  final Color? colorState;
  final Color? colorSelected;

  const ListActivityComponent({
    super.key,
    this.controller,
    required this.numberBook,
    required this.dateCreateBook,
    this.colorState,
    this.colorSelected,
  });

  @override
  Widget build(BuildContext context) {
    final rxSelected = ValueNotifier<int>(0);
    Size size = MediaQuery.of(context).size;

    return ValueListenableBuilder(
      valueListenable: rxSelected,
      builder: (context, value, _) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: size.height * 0.11,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imagesCarousel.length,
            controller: controller,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: ActivityNotebookWidget(
                  numberBook: numberBook,
                  dateCreateBook: dateCreateBook,

                  /// TODO: DEPOIS MUDAR A VALIDAÇÃO PRA SE É COMPLETO OU NAO
                  colorState: colorState,
                  colorSelected: colorSelected,
                  selectedItem: rxSelected.value == index,
                  onTap: () => rxSelected.value = index,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
