import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class ActivityNotebookWidget extends StatelessWidget {
  final String numberBook;
  final String dateCreateBook;
  final Color? colorState;
  final Color? colorSelected;
  final bool selectedItem;
  final VoidCallback onTap;

  const ActivityNotebookWidget({
    super.key,
    required this.numberBook,
    required this.dateCreateBook,
    required this.colorState,
    required this.selectedItem,
    required this.onTap,
    this.colorSelected,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    EdgeInsetsGeometry padding =
        const EdgeInsets.only(left: 16, top: 8, bottom: 8, right: 16);

    return InkWell(
      onTap: onTap,
      child: GestureDetector(
        child: SizedBox(
          width: size.width * 0.72,
          height: size.height * 0.11,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.zero,
                width: size.width * 0.2,
                height: size.height * 0.11,
                decoration: BoxDecoration(
                  color:

                      /// TODO: DEPOIS MUDAR A REGRA
                      selectedItem == true ? colorState : colorSelected,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                  ),
                ),
                child: const Icon(
                  IconsApp.book,
                  color: ColorsAppLight.white,
                  size: 24,
                ),
              ),
              Container(
                width: size.width * 0.52,
                height: size.height * 0.11,
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(
                        color: ColorsAppLight.outlineVariant, width: 1.0),
                    bottom: BorderSide(
                        color: ColorsAppLight.outlineVariant, width: 1.0),
                    top: BorderSide(
                        color: ColorsAppLight.outlineVariant, width: 1.0),
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                ),
                child: Padding(
                  padding: padding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        numberBook,
                        style: TextStyles.textBold.copyWith(
                          fontSize: 16,
                          color: ColorsAppLight.neutral50,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        dateCreateBook,
                        style: TextStyles.textMedium.copyWith(
                          fontSize: 12,
                          color: ColorsAppLight.neutral50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
