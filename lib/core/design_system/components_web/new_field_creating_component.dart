import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class NewFieldForCreatingComponent extends StatelessWidget {
  final String titleCard;
  final String titleButton;
  final void Function()? onPressedButton;
  final Widget? icon;
  const NewFieldForCreatingComponent({
    Key? key,
    required this.titleCard,
    required this.titleButton,
    this.onPressedButton,
    this.icon,
  }) : super(key: key);

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
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: titleCard,
              style: TextStyles.textMedium.copyWith(
                color: ColorsAppLight.neutral50,
                fontSize: 16,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            IconButtonWidget(
              width: size.width * 0.43,
              height: size.height * 0.057,
              title: titleButton,
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
              onPressed: onPressedButton,
            ),
          ],
        ),
      ),
    );
  }
}
