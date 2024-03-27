import '../../design_system.dart';

class IconButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final double height;
  final double width;
  final TextStyle style;
  final Color? colorBackground;
  final Widget isIcon;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final Color outlineColor;
  final List<BoxShadow>? boxShadow;
  final double spaceIcon;
  final int maxLines;

  const IconButtonWidget({
    Key? key,
    this.onPressed,
    required this.title,
    this.height = 38,
    this.width = 100,
    required this.style,
    this.colorBackground,
    required this.isIcon,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisAlignment = MainAxisAlignment.center,
    required this.outlineColor,
    this.boxShadow,
    this.spaceIcon = 6,
    this.maxLines = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double spaceWidth = width * 0.018;

    if (mainAxisAlignment == MainAxisAlignment.start) {
      spaceWidth = width * 0.09;
    }
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.zero,
        width: width,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(6),
            ),
            boxShadow: boxShadow,
            color: colorBackground,
            border: Border.all(color: outlineColor)),
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            spaceWidth,
            height * 0.20,
            spaceWidth,
            height * 0.20,
          ),
          child: Row(
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: mainAxisAlignment,
            children: [
              isIcon,
              SizedBox(
                width: spaceIcon,
              ),
              Flexible(
                child: TextWidget(
                  text: title,
                  style: style,
                  maxLines: maxLines,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
