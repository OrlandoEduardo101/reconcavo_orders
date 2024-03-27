import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';
import '../widgets/buttons/checkbox_widget.dart';

class SelectCategoryWidget extends StatelessWidget {
  final bool checkBoxIsSelected;
  final void Function(bool?)? onChanged;
  final bool isLastCategory;
  final String titleCategory;
  const SelectCategoryWidget({
    super.key,
    required this.checkBoxIsSelected,
    this.onChanged,
    this.isLastCategory = false,
    required this.titleCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              titleCategory,
              style: TextStyles.textRegular.copyWith(
                color: ColorsAppLight.neutral40,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            CheckBoxWidget(
              checkBoxIsSelected: checkBoxIsSelected,
              onChanged: onChanged,
            ),
          ],
        ),
        if (isLastCategory == false) const Divider()
      ],
    );
  }
}
