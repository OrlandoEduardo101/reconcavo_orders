import 'dart:ui';

import '../../design_system.dart';
import '../../styles/colors_app.dart';
import '../../styles/text_styles.dart';

class DialogSucessWidget extends StatelessWidget {
  final String textMessageSucess;
  final double height;
  final double width;
  final EdgeInsetsGeometry padding;
  final double? heightSpacer;

  const DialogSucessWidget({
    super.key,
    required this.textMessageSucess,
    required this.height,
    required this.width,
    this.padding = const EdgeInsets.all(32),
    this.heightSpacer = 26,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Center(
        child: Container(
          height: height,
          width: width,
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            color: ColorsAppLight.white,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            boxShadow: [
              shadowTres,
            ],
          ),
          child: Padding(
            padding: padding,
            child: Column(
              children: [
                const Center(
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    // child: Lottie.asset(
                    //   'assets/animation/sucess2.json',
                    //   fit: BoxFit.cover,
                    //   alignment: Alignment.topCenter,
                    // ),
                  ),
                ),
                SizedBox(height: heightSpacer),
                TextWidget(
                  text: textMessageSucess,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: TextStyles.textMedium.copyWith(
                    fontSize: 18,
                    color: ColorsAppLight.neutral25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
