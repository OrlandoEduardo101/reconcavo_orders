import '../../design_system.dart';

class ButtonFilterWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final double height;
  final double? width;
  final TextStyle style;
  final Color borderSide;
  final Color colorBackground;
  final double radiusCircular;
  const ButtonFilterWidget(
      {super.key,
      this.onPressed,
      required this.title,
      this.height = 30,
      this.width,
      required this.style,
      required this.borderSide,
      required this.colorBackground,
      required this.radiusCircular});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: colorBackground,
        borderRadius: BorderRadius.all(Radius.circular(radiusCircular)),
        border: Border.all(color: borderSide),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: size.height * 0.006,
          bottom: size.height * 0.006,
          left: size.width * 0.005,
          right: size.width * 0.005,
        ),
        child: Center(
          child: TextWidget(
            text: title,
            style: style,
          ),
        ),
      ),
    );
  }
}
