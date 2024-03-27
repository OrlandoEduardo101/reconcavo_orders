import '../design_system.dart';

class CarouselWidget extends StatelessWidget {
  final void Function()? onTap;
  final double width;

  final Widget image;

  const CarouselWidget({
    super.key,
    required this.onTap,
    required this.image,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
        ),
        child: image,
      ),
    );
  }
}
