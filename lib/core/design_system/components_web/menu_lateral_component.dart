// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:reconcavo_orders/core/extensions/size_extension.dart';

import '../design_system.dart';
import '../styles/text_styles.dart';

class MenuLateralComponent extends StatefulWidget {
  final String imageLogo;
  final String titleMain;

  final List<MenuLateralItem> items;

  final Color? colorStateBackground;
  final Color? colorSelectedBackgound;
  final Color? colorStateOutiline;
  final Color? colorSelectedOutiline;
  final Color? colorStateText;
  final Color? colorSelectedText;

  final int initialSelectIndex;

  const MenuLateralComponent({
    super.key,
    this.imageLogo = 'assets/image/logo_white.png',
    this.titleMain = 'PRINCIPAL',
    this.colorStateBackground,
    this.colorSelectedBackgound,
    this.colorStateOutiline,
    this.colorSelectedOutiline,
    this.colorStateText,
    this.colorSelectedText,
    this.initialSelectIndex = 0,
    required this.items,
  });

  @override
  State<MenuLateralComponent> createState() => _MenuLateralComponentState();
}

class _MenuLateralComponentState extends State<MenuLateralComponent> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialSelectIndex;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final isMobile = MediaQuery.of(context).size.isMobile;

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      color: colorScheme.surface,
      width: isMobile ? size.width * 0.75 : size.width * 0.20,
      constraints: const BoxConstraints(
        maxWidth: 300,
        minWidth: 200,
      ),
      child: Column(
        children: [
          Container(
            color: colorScheme.primary,
            height: size.height * 0.18,
            // width: size.width * 0.20,
            child: Center(
              child: Image.asset(
                widget.imageLogo,
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
              // mainAxisSize: MainAxisSize.min,
              children: [
                TextWidget(
                    text: widget.titleMain,
                    style: TextStyles.textMedium.copyWith(
                      fontSize: 16,
                      color: colorScheme.onSurface,
                    )),
                SizedBox(height: size.height * 0.009),
                ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: size.height),
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: widget.items.length,
                      separatorBuilder: (context, index) => SizedBox(height: size.height * 0.009),
                      itemBuilder: (context, index) {
                        final item = widget.items[index];

                        return IconButtonWidget(
                          onPressed: () {
                            item.onPressed.call();
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          height: size.height * 0.057,
                          width: size.width * 0.16,
                          colorBackground:
                              selectedIndex != index ? widget.colorStateBackground! : widget.colorSelectedBackgound!,
                          boxShadow: [
                            shadowTres,
                          ],
                          mainAxisAlignment: MainAxisAlignment.start,
                          isIcon: Icon(
                            item.icon,
                            color: selectedIndex != index ? colorScheme.onSurface : colorScheme.onPrimary,
                            size: 20,
                          ),
                          outlineColor:
                              selectedIndex != index ? widget.colorStateOutiline! : widget.colorSelectedOutiline!,
                          title: item.title,
                          style: TextStyles.textMedium.copyWith(
                            color: selectedIndex != index ? widget.colorStateText! : widget.colorSelectedText!,
                            fontSize: 16,
                          ),
                        );
                      },
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MenuLateralItem {
  final void Function() onPressed;
  final String title;
  final IconData icon;
  const MenuLateralItem({
    required this.onPressed,
    required this.title,
    required this.icon,
  });
}
