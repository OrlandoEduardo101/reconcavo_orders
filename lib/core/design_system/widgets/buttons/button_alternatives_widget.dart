import '../../design_system.dart';
import '../../styles/colors_app.dart';

class ButtonAlternativesWidget extends StatelessWidget {
  final void Function()? onPressedButtonAlternative;
  final String title;
  final double height;
  final double? width;
  final TextStyle style;
  final double radiusCircular;
  final Color? colorStateAlternative;
  final Color? colorSelectedAlternative;
  final Color? colorBackgroundAlternativeState;
  final Color? colorBackgroundAlternativeSelected;
  final bool selectedAlternative;
  const ButtonAlternativesWidget({
    super.key,
    this.onPressedButtonAlternative,
    required this.title,
    this.height = 40,
    this.width = 40,
    required this.style,
    this.radiusCircular = 50,
    this.colorStateAlternative = ColorsAppLight.primary,
    this.colorSelectedAlternative = ColorsAppLight.onCorrect,
    required this.selectedAlternative,
    this.colorBackgroundAlternativeState = ColorsAppLight.primary90,
    this.colorBackgroundAlternativeSelected = ColorsAppLight.correct,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: selectedAlternative == false
            ? colorBackgroundAlternativeState!
            : colorBackgroundAlternativeSelected!,
        borderRadius: BorderRadius.all(Radius.circular(radiusCircular)),
        border: Border.all(
          color: selectedAlternative == false
              ? colorStateAlternative!
              : colorSelectedAlternative!,
        ),
      ),
      child: Center(
        child: TextButton(
          onPressed: onPressedButtonAlternative,
          child: TextWidget(
            text: title,
            style: style.copyWith(
              color: selectedAlternative == false
                  ? colorStateAlternative!
                  : colorSelectedAlternative!,
            ),
          ),
        ),
      ),
    );
  }
}
