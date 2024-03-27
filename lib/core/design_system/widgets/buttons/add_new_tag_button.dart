import '../../design_system.dart';
import '../../styles/colors_app.dart';
import '../../styles/text_styles.dart';

class AddNewTagButton extends StatelessWidget {
  final double height;
  final double width;
  final double widthPadding;

  final void Function()? onTapAdd;
  const AddNewTagButton({
    super.key,
    required this.height,
    required this.width,
    required this.widthPadding,
    this.onTapAdd,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapAdd,
      child: SizedBox(
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: widthPadding),
            const Icon(
              IconsApp.plus,
              size: 12,
              color: ColorsAppLight.outline,
            ),
            SizedBox(width: width),
            Text(
              'Adicionar novo',
              style: TextStyles.textMedium.copyWith(
                fontSize: 16,
                color: ColorsAppLight.outline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
