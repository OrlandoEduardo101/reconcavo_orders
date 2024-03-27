import 'dart:ui';
import 'package:dotted_border/dotted_border.dart';
import '../../design_system.dart';
import '../../styles/colors_app.dart';
import '../../styles/text_styles.dart';

class DialogSvgWidget extends StatelessWidget {
  final String textDescriptionImport;
  final String textTitleImport;
  final void Function()? onPressedConfirm;
  final void Function()? onTap;

  const DialogSvgWidget({
    Key? key,
    required this.textDescriptionImport,
    this.onPressedConfirm,
    this.onTap,
    required this.textTitleImport,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Center(
        child: Container(
          height: 396,
          width: 524,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: textTitleImport,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    style: TextStyles.textMedium.copyWith(
                      fontSize: 18,
                      color: ColorsAppLight.neutral25,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  DottedBorder(
                    color: ColorsAppLight.neutral90,
                    strokeWidth: 1,
                    child: SizedBox(
                      height: 277,
                      width: 460,
                      child: Padding(
                        padding: const EdgeInsets.all(48),
                        child: GestureDetector(
                          onTap: onTap,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/image/csv.png',
                                height: 81,
                                width: 81,
                              ),
                              SizedBox(height: size.height * 0.028),
                              TextWidget(
                                text: textDescriptionImport,
                                maxLines: 3,
                                textAlign: TextAlign.center,
                                style: TextStyles.textMedium.copyWith(
                                  fontSize: 18,
                                  color: ColorsAppLight.neutral25,
                                ),
                              ),
                              SizedBox(height: size.height * 0.028),
                              TextWidget(
                                text: 'ou arraste e solte aqui.',
                                maxLines: 3,
                                textAlign: TextAlign.center,
                                style: TextStyles.textMedium.copyWith(
                                  fontSize: 16,
                                  color: ColorsAppLight.neutral70,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
