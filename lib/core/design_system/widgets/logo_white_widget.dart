import '../design_system.dart';

class LogoWhiteWidget extends StatelessWidget {
  final double height;
  final double width;
  const LogoWhiteWidget({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Image.asset(
        'assets/image/logo_white.png',
      ),
    );
  }
}
