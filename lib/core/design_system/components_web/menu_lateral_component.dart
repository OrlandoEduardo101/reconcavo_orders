import '../design_system.dart';
import '../styles/text_styles.dart';

class MenuLateralComponent extends StatelessWidget {
  final String imageLogo;
  final String titleMain;
  final void Function()? onPressedButtonHome;
  final String titleButtonHome;
  final Widget iconButtonHome;

  final Color? colorStateBackground;
  final Color? colorSelectedBackgound;
  final bool selectedHome;
  final Color? colorStateOutiline;
  final Color? colorSelectedOutiline;
  final Color? colorStateText;
  final Color? colorSelectedText;

  const MenuLateralComponent({
    super.key,
    this.imageLogo = 'assets/image/logo_white.png',
    this.titleMain = 'PRINCIPAL',
    this.onPressedButtonHome,
    this.titleButtonHome = 'Home',
    required this.iconButtonHome,
    this.colorStateBackground,
    this.colorSelectedBackgound,
    this.colorStateOutiline,
    this.colorSelectedOutiline,
    this.colorStateText,
    this.colorSelectedText,
    required this.selectedHome,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final theme = Theme.of(context);
    final colorSceme = theme.colorScheme;

    return Container(
      width: size.width * 0.20,
      color: colorSceme.surface,
      child: Column(
        children: [
          Container(
            color: colorSceme.primary,
            height: size.height * 0.13,
            width: size.width * 0.20,
            child: Center(
              child: Image.asset(
                imageLogo,
                height: size.height * 0.06,
                width: size.width * 0.08,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.03,
              right: size.width * 0.03,
              bottom: size.height * 0.038,
              top: size.height * 0.016,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextWidget(
                    text: titleMain,
                    style: TextStyles.textMedium.copyWith(
                      fontSize: 16,
                      color: colorSceme.onSurface,
                    )),
                SizedBox(height: size.height * 0.009),
                IconButtonWidget(
                  onPressed: onPressedButtonHome,
                  height: size.height * 0.057,
                  width: size.width * 0.16,
                  colorBackground: selectedHome == false ? colorStateBackground! : colorSelectedBackgound!,
                  boxShadow: [
                    shadowTres,
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                  isIcon: iconButtonHome,
                  outlineColor: selectedHome == false ? colorStateOutiline! : colorSelectedOutiline!,
                  title: titleButtonHome,
                  style: TextStyles.textMedium.copyWith(
                    color: selectedHome == false ? colorStateText! : colorSelectedText!,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: size.height * 0.009),
              ],
            ),
          )
        ],
      ),
    );
  }
}
