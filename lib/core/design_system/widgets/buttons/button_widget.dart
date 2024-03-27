import '../../design_system.dart';

class ButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final double height;
  final double width;
  final TextStyle style;
  final Color borderSide;
  final Color colorBackground;
  final double radiusCircular;

  const ButtonWidget({
    Key? key,
    this.onPressed,
    required this.title,
    this.height = 38,
    this.width = 100,
    required this.style,
    required this.borderSide,
    required this.colorBackground,
    this.radiusCircular = 6,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(
          width * 0.018,
          height * 0.047,
          width * 0.018,
          height * 0.047,
        )),
        backgroundColor: MaterialStateProperty.all(colorBackground),
        fixedSize: MaterialStateProperty.all(Size(width, height)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(radiusCircular)),
            side: BorderSide(
              color: borderSide,
            ),
          ),
        ),
      ),
      child: TextWidget(
        text: title,
        style: style,
      ),
    );
  }
}
