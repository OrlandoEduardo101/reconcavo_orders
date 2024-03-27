import 'dart:ui';
import 'package:routefly/routefly.dart';
import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class DialogNewUserComponent extends StatelessWidget {
  final double height;
  final double width;
  final void Function()? onPressedCancel;
  final void Function()? onPressedConfirmSave;
  final TextEditingController? controller;

  DialogNewUserComponent(
      {super.key,
      required this.height,
      required this.width,
      this.onPressedCancel,
      this.onPressedConfirmSave,
      this.controller});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController confirmEmailController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Center(
        child: Material(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
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
              padding: EdgeInsets.only(
                left: size.width * 0.025,
                right: size.width * 0.025,
                top: size.height * 0.037,
                bottom: size.height * 0.037,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: 'Cadastrar novo usuário',
                          style: TextStyles.textMedium.copyWith(
                            fontSize: 18,
                            color: ColorsAppLight.neutral25,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              Routefly.pop(context);
                            },
                            icon: const Icon(Icons.close,
                                size: 24, color: ColorsAppLight.neutral50)),
                      ],
                    ),
                    const SizedBox(height: 16),
                    TextWidget(
                      text: 'Nome',
                      style: TextStyles.textMedium.copyWith(
                          fontSize: 14, color: ColorsAppLight.neutral50),
                    ),
                    const SizedBox(height: 10),
                    TextFieldWidget(
                      controller: nameController,
                      validator: (p0) {
                        return null;
                      },
                      onChanged: (p0) {},
                    ),
                    const SizedBox(height: 8),
                    TextWidget(
                      text: 'E-mail',
                      style: TextStyles.textMedium.copyWith(
                          fontSize: 14, color: ColorsAppLight.neutral50),
                    ),
                    const SizedBox(height: 10),
                    TextFieldWidget(
                      controller: emailController,
                      validator: (p0) {
                        return null;
                      },
                      onChanged: (p0) {},
                    ),
                    const SizedBox(height: 8),
                    TextWidget(
                      text: 'Confirmar e-mail',
                      style: TextStyles.textMedium.copyWith(
                          fontSize: 14, color: ColorsAppLight.neutral50),
                    ),
                    const SizedBox(height: 10),
                    TextFieldWidget(
                      controller: confirmEmailController,
                      validator: (p0) {
                        return null;
                      },
                      onChanged: (p0) {},
                    ),
                    const SizedBox(height: 8),
                    TextWidget(
                      text: 'CPF',
                      style: TextStyles.textMedium.copyWith(
                          fontSize: 14, color: ColorsAppLight.neutral50),
                    ),
                    const SizedBox(height: 10),
                    TextFieldWidget(
                      controller: cpfController,
                      validator: (p0) {
                        return null;
                      },
                      onChanged: (p0) {},
                    ),
                    const SizedBox(height: 8),
                    TextWidget(
                      text:
                          'A senha será gerada automaticamente e enviada \nvia e-mail para o usuário.',
                      maxLines: 2,
                      style: TextStyles.textRegular.copyWith(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        color: ColorsAppLight.warning,
                      ),
                    ),
                    const SizedBox(height: 16),
                    RowButtonComponent(
                      isDoneButtonPressed: false,
                      colorSelected: ColorsAppLight.save,
                      colorState: ColorsAppLight.save,
                      colorBackgroundConclude: ColorsAppLight.save,
                      colorSelectedTitle: ColorsAppLight.white,
                      colorStateTitle: ColorsAppLight.white,
                      titleState: 'Salvar',
                      titleSelected: 'Salvar',
                      onPressedConclude: onPressedConfirmSave,
                      onPressedIconDelet: onPressedCancel,
                      height: 48,
                      width: 129,
                      iconConclude: Icons.check,
                      colorSelectedIconConclude: ColorsAppLight.white,
                      colorStateIconConclude: ColorsAppLight.white,
                      sizeIcon: 20,
                      titleDelet: 'Cancelar',
                      iconDelet: const Icon(
                        Icons.close,
                        color: ColorsAppLight.error60,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
