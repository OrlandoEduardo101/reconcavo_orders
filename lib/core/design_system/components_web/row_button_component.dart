import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class RowButtonComponent extends StatelessWidget {
  final Color? colorState;
  final Color? colorSelected;
  final String? titleState;
  final String? titleSelected;
  final void Function()? onPressedConclude;
  final bool isDoneButtonPressed;
  final void Function()? onPressedIconDelet;
  final double height;
  final double width;
  final Icon iconDelet;
  final IconData? iconConclude;
  final double? sizeIcon;
  final String? titleDelet;
  final Color? colorBackgroundConclude;
  final Color? colorStateTitle;
  final Color? colorSelectedTitle;
  final Color? colorStateIconConclude;
  final Color? colorSelectedIconConclude;
  const RowButtonComponent({
    super.key,
    this.colorState,
    this.colorSelected,
    this.titleState,
    this.titleSelected,
    this.onPressedConclude,
    required this.isDoneButtonPressed,
    this.onPressedIconDelet,
    this.width = 124,
    required this.height,
    this.iconDelet = const Icon(
      IconsApp.trash,
      color: ColorsAppLight.red,
      size: 18,
    ),
    this.iconConclude = IconsApp.vector,
    this.sizeIcon = 10,
    this.titleDelet = 'Excluir',
    this.colorBackgroundConclude = ColorsAppLight.white,
    this.colorStateTitle,
    this.colorSelectedTitle,
    this.colorSelectedIconConclude = ColorsAppLight.neutral50,
    this.colorStateIconConclude = ColorsAppLight.save,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        IconButtonWidget(
          height: height,
          width: width,
          colorBackground: ColorsAppLight.white,
          isIcon: iconDelet,
          outlineColor: ColorsAppLight.red,
          title: titleDelet!,
          style: TextStyles.textMedium.copyWith(
            color: ColorsAppLight.red,
            fontSize: 16,
          ),
          onPressed: onPressedIconDelet!,
        ),
        SizedBox(width: size.width * 0.01),
        IconButtonWidget(
          height: height,
          width: width,
          title: isDoneButtonPressed == false ? titleState! : titleSelected!,
          maxLines: 1,
          style: TextStyles.textMedium.copyWith(
            color: isDoneButtonPressed == false
                ? colorStateTitle!
                : colorSelectedTitle!,
            fontSize: 16,
          ),
          spaceIcon: size.width * 0.007,
          isIcon: Icon(
            iconConclude,
            color: isDoneButtonPressed == false
                ? colorStateIconConclude!
                : colorSelectedIconConclude!,
            size: sizeIcon,
          ),
          outlineColor:
              isDoneButtonPressed == false ? colorState! : colorSelected!,
          colorBackground: colorBackgroundConclude,
          onPressed: onPressedConclude!,
        ),
      ],
    );
  }
}
