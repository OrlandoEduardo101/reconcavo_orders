import '../design_system.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final TextStyle style;
  final int maxLines;
  final TextAlign? textAlign;
  const TextWidget({
    Key? key,
    required this.text,
    required this.style,
    this.maxLines = 1,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: style,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
