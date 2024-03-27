import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class QuantityCircleWidget extends StatelessWidget {
  final int? quantity;
  final Color? colorContainer;
  final Color? colorQuantity;
  final double? height;
  final double? width;

  const QuantityCircleWidget({
    super.key,
    this.quantity,
    this.colorContainer = ColorsAppLight.neutral90,
    this.colorQuantity = ColorsAppLight.onPrimaryFixed,
    this.height = 25,
    this.width = 25,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: colorContainer,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          quantity!.toString(),
          style: TextStyles.textMedium.copyWith(
            color: colorQuantity,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
