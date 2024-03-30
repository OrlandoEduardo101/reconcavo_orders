import 'dart:ui';

import 'package:reconcavo_orders/core/models/user_model.dart';
import 'package:routefly/routefly.dart';

import '../../../app/routes.dart.bak';
import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class MyDrawerComponent extends StatefulWidget {
  final UserModel users;

  const MyDrawerComponent({super.key, required this.users});

  @override
  State<MyDrawerComponent> createState() => _MyDrawerComponentState();
}

bool valueTheme = false;

class _MyDrawerComponentState extends State<MyDrawerComponent> {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Drawer(
        elevation: 0,
        width: 264,
        backgroundColor: ColorsAppLight.surface,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 38, 16, 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  InkWell(
                    child: const Icon(
                      Icons.arrow_back,
                      color: ColorsAppLight.outline,
                      size: 24,
                    ),
                    onTap: () {
                      Routefly.pop(context);
                    },
                  ),
                  const SizedBox(width: 16),
                  TextWidget(
                      text: 'Menu',
                      style: TextStyles.textMedium.copyWith(
                          fontSize: 12, color: ColorsAppLight.neutral50))
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.asset(
                        widget.users.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextWidget(
                      text: widget.users.name,
                      style: TextStyles.textMedium.copyWith(
                        fontSize: 14,
                        color: ColorsAppLight.neutral40,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 26),
              Row(
                children: [
                  const Icon(
                    Icons.nightlight_outlined,
                    color: ColorsAppLight.iconMobile,
                    size: 18,
                  ),
                  const SizedBox(width: 16),
                  TextWidget(
                    text: 'Modo noturno',
                    style: TextStyles.textMedium.copyWith(
                      fontSize: 14,
                      color: ColorsAppLight.neutral40,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: 56,
                      height: 30,
                      child: Switch(
                        value: valueTheme,
                        onChanged: (value) {
                          setState(() {
                            valueTheme = !valueTheme;
                            // themeStore.isLightTheme == value;
                            // themeStore.toggleTheme;
                          });
                        },
                        splashRadius: 1,
                        activeColor: ColorsAppLight.white,
                        activeTrackColor: ColorsAppLight.primary,
                        inactiveThumbColor: ColorsAppLight.white,
                        inactiveTrackColor: ColorsAppLight.neutral80,
                        trackOutlineColor: MaterialStateProperty.resolveWith(
                          (final Set<MaterialState> states) {
                            if (states.contains(MaterialState.selected)) {
                              return null;
                            }
                            return Colors.transparent;
                          },
                        ),
                        thumbIcon: MaterialStateProperty.all(
                          const Icon(
                            Icons.sunny,
                            color: ColorsAppLight.iconMobile,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: ColorsAppLight.outlineVariant,
              ),
              InkWell(
                onTap: () {
                  // Routefly.push(routePaths.pages.users);
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.account_circle_outlined,
                      color: ColorsAppLight.iconMobile,
                      size: 18,
                    ),
                    const SizedBox(width: 16),
                    TextWidget(
                      text: 'Meu perfil',
                      style: TextStyles.textMedium.copyWith(
                        fontSize: 14,
                        color: ColorsAppLight.neutral40,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: ColorsAppLight.outlineVariant,
              ),
              InkWell(
                onTap: () {
                  // Routefly.push(
                  //     routePaths.pages.listNotebooksClient.listNotebooks);
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.school_outlined,
                      color: ColorsAppLight.iconMobile,
                      size: 18,
                    ),
                    const SizedBox(width: 16),
                    TextWidget(
                      text: 'Meus cadernos',
                      style: TextStyles.textMedium.copyWith(
                        fontSize: 14,
                        color: ColorsAppLight.neutral40,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: ColorsAppLight.outlineVariant,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    const Icon(
                      Icons.help_outline,
                      color: ColorsAppLight.iconMobile,
                      size: 18,
                    ),
                    const SizedBox(width: 16),
                    TextWidget(
                      text: 'Central de ajuda',
                      style: TextStyles.textMedium.copyWith(
                        fontSize: 14,
                        color: ColorsAppLight.neutral40,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  // Routefly.push(routePaths.pages.loginClient.login);
                },
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/move_item.png',
                      color: ColorsAppLight.red,
                      height: 18,
                    ),
                    const SizedBox(width: 16),
                    TextWidget(
                        text: 'Sair da conta',
                        style: TextStyles.textMedium.copyWith(
                          color: ColorsAppLight.red,
                          fontSize: 14,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
