import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 70,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyles.textMedium.copyWith(
          fontSize: 16,
          color: ColorsAppLight.white,
        ),
      ),
    );
  }
}
