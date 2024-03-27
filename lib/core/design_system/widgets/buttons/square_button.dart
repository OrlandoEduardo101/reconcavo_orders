import '../../design_system.dart';

class SquareButton extends StatelessWidget {
  final Color colorBorder;
  final Color colorIcon;
  final Color colorButton;
  final void Function()? onTapSquareButton;
  final IconData? icon;
  final double? width;
  final double? height;
  const SquareButton({
    super.key,
    required this.colorBorder,
    required this.colorIcon,
    required this.colorButton,
    this.onTapSquareButton,
    this.icon,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapSquareButton,
      child: Container(
        margin: EdgeInsets.zero,
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(6),
          ),
          boxShadow: [shadowTres],
          color: colorButton,
          border: Border.all(color: colorBorder),
        ),
        child: Icon(
          icon,
          color: colorIcon,
          size: 20,
        ),
      ),
    );
  }
}
