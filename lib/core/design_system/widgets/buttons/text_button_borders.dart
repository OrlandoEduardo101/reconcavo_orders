import '../../design_system.dart';

class TextButtonBorder extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final Color outlineColor;
  final double border;
  final Color colorBackground;
  final TextStyle style;
  final void Function()? onTap;

  const TextButtonBorder({
    super.key,
    required this.title,
    this.height = 30,
    this.width = 60,
    this.outlineColor = Colors.transparent,
    this.border = 16,
    required this.colorBackground,
    required this.style,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: colorBackground,
          border: Border.all(color: outlineColor),
          borderRadius: BorderRadius.all(
            Radius.circular(border),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: style,
          ),
        ),
      ),
    );
  }
}
