import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';
import 'quantity_circle_widget.dart';

class ContainerFilterSelectionsWidget extends StatelessWidget {
  final String titleAccountSelected;
  final void Function()? onTapFilters;
  const ContainerFilterSelectionsWidget({
    super.key,
    required this.titleAccountSelected,
    this.onTapFilters,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFilters,
      child: Container(
        height: 54,
        decoration: BoxDecoration(
          color: ColorsAppLight.tertiary90,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          border: Border.all(color: ColorsAppLight.tertiary80),
        ),
        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
        child: Row(
          children: [
            Text(
              titleAccountSelected,
              style: TextStyles.textRegular.copyWith(
                fontSize: 14,
                color: ColorsAppLight.neutral40,
              ),
            ),
            const Spacer(),
            QuantityCircleWidget(
              quantity: currentCount,
              colorContainer: ColorsAppLight.primary,
              colorQuantity: ColorsAppLight.white,
              height: 20,
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
