
import '../styles/colors_app.dart';
import '../design_system.dart';
import '../styles/text_styles.dart';

class FieldOfWritingCardWidget extends StatelessWidget {
  final dynamic Function(bool)? onFocusChanged;
  final dynamic Function(String)? onTextChanged;
  final String titleCard;
  final bool iconDelet;
  final Widget iconConclude;
  final double widthCard;
  final double heightCard;
  final double heightTextField;
  final Widget sizedBox;
  final Function(String)? onEditingCompleted;
  final void Function()? onPressedIconDelet;

  const FieldOfWritingCardWidget({
    Key? key, 
    this.onFocusChanged,
    this.onTextChanged,
    required this.titleCard,
    required this.iconDelet,
    required this.iconConclude,
    required this.widthCard,
    required this.heightCard,
    required this.heightTextField,
    required this.sizedBox,
    this.onEditingCompleted,
    this.onPressedIconDelet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizedBox sizeDezesseis = SizedBox(height: size.height * 0.019);

    return Container(
        width: size.width * 0.44,
        decoration: BoxDecoration(
          color: ColorsAppLight.white,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            shadowTres,
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.019,
            bottom: size.height * 0.019,
            right: size.width * 0.012,
            left: size.width * 0.012,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: titleCard,
                style: TextStyles.textMedium.copyWith(
                  color: ColorsAppLight.neutral50,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Container(
                width: widthCard,
                height: heightCard,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: ColorsAppLight.neutral90,
                    )),
                child: Column(
                  children: [
                    // ToolBarListWidget(
                    //   toolBarColor: ColorsAppLight.neutral95,
                    //   iconColor: ColorsAppLight.neutral50,
                    //   activeIconColor: ColorsAppLight.primary,
                    //   controller: controller,
                    //   toolBarConfig: customToolBarList,
                    //   padding: EdgeInsets.only(
                    //     top: size.height * 0.01,
                    //     bottom: size.height * 0.01,
                    //     left: size.width * 0.006,
                    //     // index == 0 ? 16 : 8,
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: heightTextField,
                    //   child: FieldOfWritingStatementsWidget(
                    //     controller: controller,
                    //     onFocusChanged: onFocusChanged,
                    //     onTextChanged: onTextChanged,
                    //     onEditingCompleted: onEditingCompleted,
                    //   ),
                    // ),
                  ],
                ),
              ),
              sizeDezesseis,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (iconDelet == true)
                    IconButtonWidget(
                      height: 48,
                      width: 111,
                      colorBackground: ColorsAppLight.white,
                      isIcon: const Icon(
                        IconsApp.trash,
                        color: ColorsAppLight.red,
                        size: 20,
                      ),
                      outlineColor: ColorsAppLight.red,
                      title: 'Excluir',
                      style: TextStyles.textMedium.copyWith(
                        color: ColorsAppLight.red,
                        fontSize: 16,
                      ),
                      onPressed: onPressedIconDelet,
                    ),
                  if (iconDelet == false) const SizedBox.shrink(),
                  sizedBox,
                  iconConclude,
                ],
              ),
            ],
          ),
        ));
  }
}
