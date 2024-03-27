import '../../design_system.dart';
import '../../styles/colors_app.dart';
import '../../styles/text_styles.dart';

class MessageErrorNewQuestionEmptyWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final double height;
  final double width;
  final int maxLines;

  const MessageErrorNewQuestionEmptyWidget({
    super.key,
    this.onPressed,
    required this.text,
    required this.height,
    required this.width,
    this.maxLines = 3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: ColorsAppLight.error70,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          shadowTres,
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16, left: 2, bottom: 16, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(
                Icons.close,
                color: ColorsAppLight.white,
                size: 20,
              ),
              onPressed: onPressed,
              alignment: Alignment.center,
            ),
            const SizedBox(
              width: 2,
            ),
            TextWidget(
              text: text,
              maxLines: maxLines,
              style: TextStyles.textMedium.copyWith(
                fontSize: 16,
                color: ColorsAppLight.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
