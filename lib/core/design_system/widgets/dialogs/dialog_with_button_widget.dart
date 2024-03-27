import 'dart:ui';
import 'package:routefly/routefly.dart';
import '../../design_system.dart';
import '../../styles/colors_app.dart';
import '../../styles/text_styles.dart';

class DialogWithButtonWidget extends StatelessWidget {
  final String textDescriptionMessageAttention;
  final String textButtonBack;
  final String textButtonConfirm;
  final Widget icon;
  final double height;
  final double width;
  final void Function()? onPressedConfirm;
  final bool? isWhitName;
  final Widget? textName;
  final double widthButtonBack;
  final double heightButtonBack;
  final double widthButtonConfirm;
  final double heightButtonConfirm;
  final void Function()? onPressedBack;
  final double widthSpaceButtons;

  const DialogWithButtonWidget({
    super.key,
    required this.textDescriptionMessageAttention,
    this.textButtonBack = 'Não, quero voltar',
    this.textButtonConfirm = 'Sim, desejo excluir',
    this.icon = const Icon(
      IconsApp.warning,
      size: 80,
      color: ColorsAppLight.warning,
    ),
    this.onPressedConfirm,
    this.height = 299,
    this.width = 430,
    this.isWhitName,
    this.textName,
    required this.widthButtonBack,
    required this.heightButtonBack,
    required this.widthButtonConfirm,
    required this.heightButtonConfirm,
    this.onPressedBack,
    required this.widthSpaceButtons,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Center(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: ColorsAppLight.white,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            boxShadow: [
              shadowTres,
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  isWhitName == false
                      ? const SizedBox()
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            textName!,
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  Routefly.pop(context);
                                },
                                icon: const Icon(Icons.close,
                                    size: 24, color: ColorsAppLight.neutral50)),
                          ],
                        ),
                  isWhitName == false
                      ? const SizedBox()
                      : const SizedBox(height: 16),
                  icon,
                  const SizedBox(height: 16),
                  TextWidget(
                    text: textDescriptionMessageAttention,
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: TextStyles.textMedium.copyWith(
                      fontSize: 16,
                      color: ColorsAppLight.neutral25,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      ButtonWidget(
                        width: widthButtonBack,
                        height: heightButtonBack,
                        title: textButtonBack,
                        style: TextStyles.textMedium.copyWith(
                          fontSize: 15,
                          color: ColorsAppLight.neutral50,
                        ),
                        borderSide: ColorsAppLight.neutral50,
                        colorBackground: ColorsAppLight.white,
                        onPressed: onPressedBack,
                      ),
                      SizedBox(width: widthSpaceButtons),
                      ButtonWidget(
                        width: widthButtonConfirm,
                        height: heightButtonConfirm,
                        title: textButtonConfirm,
                        style: TextStyles.textMedium.copyWith(
                          fontSize: 15,
                          color: ColorsAppLight.error60,
                        ),
                        borderSide: ColorsAppLight.error60,
                        colorBackground: ColorsAppLight.white,
                        onPressed: onPressedConfirm,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
