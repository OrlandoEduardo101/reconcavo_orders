import '../design_system.dart';
import '../styles/colors_app.dart';

class SearchBarWidget extends StatelessWidget {
  final Widget icon;
  final String hintText;
  final TextStyle style;
  final double height;
  final double width;
  final void Function(String)? onSubmitted;
  const SearchBarWidget(
      {super.key,
      required this.icon,
      required this.hintText,
      required this.style,
      this.onSubmitted,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
        left: size.width * 0.01,
        right: size.width * 0.01,
        bottom: size.height * 0.012,
        top: size.height * 0.012,
      ),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          border: Border.all(color: ColorsAppLight.outlineVariant),
        ),
        child: SearchBar(
          onSubmitted: onSubmitted,
          backgroundColor: MaterialStateProperty.all(Colors.white),
          overlayColor: MaterialStateProperty.all(Colors.white),
          shadowColor: MaterialStateProperty.all(Colors.white),
          surfaceTintColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all(0),
          hintText: hintText,
          hintStyle: MaterialStateProperty.all(style),
          leading: icon,
        ),
      ),
    );
  }
}
