import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class AlternativeCreationComponentWeb extends StatelessWidget {
  final dynamic Function(bool)? onFocusChanged;
  final dynamic Function(String)? onTextChanged;

  final bool visibility;
  final void Function()? onPressedIconDelet;
  final void Function()? onPressedConclude;
  final String titleNumberAlternative;
  final String titleNewAlternative;
  final void Function()? onPressedNewAlternatives;
  final bool selectedAlternative;
  final Function(String)? onEditingCompleted;

  const AlternativeCreationComponentWeb({
    Key? key,
    this.onFocusChanged,
    this.onTextChanged,
    required this.visibility,
    this.onPressedIconDelet,
    this.onPressedConclude,
    required this.titleNumberAlternative,
    required this.titleNewAlternative,
    this.onPressedNewAlternatives,
    required this.selectedAlternative,
    this.onEditingCompleted,
  }) : super(key: key);

  /// TODO: NAO ESTÁ SENDO USADO, FOI CRIADO OUTRO!
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.44,
      decoration: BoxDecoration(
        color: ColorsAppLight.white,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          shadowTres,
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: size.height * 0.019,
          bottom: size.height * 0.019,
          right: size.width * 0.012,
          left: size.width * 0.012,
        ),
        child: Column(
          children: [
            // AlternativeCreateWidget(
            //   titleNumberAlternative: titleNumberAlternative,
            //   controller: controller,
            //   onFocusChanged: onFocusChanged,
            //   onTextChanged: onTextChanged,
            //   visibility: visibility,
            //   colorStateAlternative: ColorsAppLight.primary,
            //   colorSelectedAlternative: ColorsAppLight.onCorrect,
            //   selectedAlternative: selectedAlternative,
            //   onPressedAlternative: onPressedNewAlternatives,
            //   onEditingCompleted: onEditingCompleted,
            // ),
            SizedBox(height: size.height * 0.019),
            RowButtonComponent(
              isDoneButtonPressed: false,
              colorSelected: ColorsAppLight.neutral50,
              colorState: ColorsAppLight.save,
              titleState: 'Concluir',
              titleSelected: 'Editar',
              onPressedConclude: onPressedConclude,
              onPressedIconDelet: onPressedIconDelet,
              height: size.height * 0.057,
            ),
            SizedBox(height: size.height * 0.019),
            IconButtonWidget(
              width: size.width * 0.43,
              height: size.height * 0.057,
              title: titleNewAlternative,
              maxLines: 1,
              style: TextStyles.textMedium.copyWith(
                color: ColorsAppLight.neutral50,
                fontSize: 16,
              ),
              colorBackground: ColorsAppLight.white,
              isIcon: const Icon(
                IconsApp.plus,
                color: ColorsAppLight.neutral50,
                size: 9,
              ),
              boxShadow: [
                shadowTres,
              ],
              outlineColor: Colors.transparent,
              onPressed: onPressedNewAlternatives,
            ),
          ],
        ),
      ),
    );
  }
}
