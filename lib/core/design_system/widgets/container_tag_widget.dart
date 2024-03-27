import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class ContainerTagWidget extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final double height;
  final double? width;
  final EdgeInsetsGeometry padding;
  final bool isSelected;
  final void Function()? onTapTag;

  const ContainerTagWidget({
    super.key,
    required this.text,
    required this.textStyle,
    this.height = 31,
    this.padding = const EdgeInsets.only(right: 9, left: 9, top: 6, bottom: 6),
    this.isSelected = false,
    this.onTapTag,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapTag,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: isSelected == false
              ? ColorsAppLight.surface
              : ColorsAppLight.primary,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected == false
                ? ColorsAppLight.iconMobile
                : ColorsAppLight.primary,
          ),
        ),
        child: Padding(
          padding: padding,
          child: Center(
              child: Text(text,
                  style: TextStyles.textRegular.copyWith(
                    color: isSelected == false
                        ? ColorsAppLight.textTagNotebook
                        : ColorsAppLight.white,
                    fontSize: 14,
                  ))),
        ),
      ),
    );
  }
}
