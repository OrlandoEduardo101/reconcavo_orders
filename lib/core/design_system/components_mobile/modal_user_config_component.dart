import 'dart:ui';
import 'package:routefly/routefly.dart';
import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class ModalUserConfigComponent extends StatelessWidget {
  final String textTitle;
  final bool isChangePassword;
  final double? heightModal;
  final void Function()? onPressedButtonConfirm;
  final bool isObscureNewPassword;
  final bool isErrorName;
  final bool isErrorCurrentPassword;
  final bool isErrorNewPassword;
  final bool isErrorConfirmNewPassword;
  final void Function()? onTapNewPassword;
  final void Function(String)? onChangedNewPassword;
  final String? Function(String?)? validatorNewPassword;
  final Widget? iconNewPass;
  final bool isObscureConfirmNewPass;
  final void Function()? onTapConfirmNewPass;
  final void Function(String)? onChangedConfirmNewPass;
  final String? Function(String?)? validatorConfirmNewPass;
  final Widget? iconConfirmNewPass;
  final bool isPasswordCurrent;
  final void Function()? onTapPasswordCurrent;
  final void Function(String)? onChangedPasswordCurrent;
  final String? Function(String?)? validatorPasswordCurrent;
  final Widget? iconPasswordCurrent;
  final void Function(String)? onChangedName;
  final String? Function(String?)? validatorName;
  final String? initialName;

  const ModalUserConfigComponent({
    Key? key,
    required this.textTitle,
    this.isChangePassword = false,
    this.heightModal,
    this.onPressedButtonConfirm,
    this.isObscureNewPassword = true,
    this.onTapNewPassword,
    this.onChangedNewPassword,
    this.validatorNewPassword,
    this.iconNewPass,
    this.isObscureConfirmNewPass = true,
    this.onTapConfirmNewPass,
    this.onChangedConfirmNewPass,
    this.validatorConfirmNewPass,
    this.iconConfirmNewPass,
    this.isPasswordCurrent = true,
    this.onTapPasswordCurrent,
    this.onChangedPasswordCurrent,
    this.validatorPasswordCurrent,
    this.iconPasswordCurrent,
    this.onChangedName,
    this.validatorName,
    this.initialName,
    this.isErrorName = false,
    this.isErrorCurrentPassword = false,
    this.isErrorNewPassword = false,
    this.isErrorConfirmNewPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
      child: SizedBox(
        height: heightModal,
        width: size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 26,
                  width: size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Routefly.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          size: 24,
                          color: ColorsAppLight.neutral50,
                        ),
                      ),
                      const SizedBox(width: 16),
                      TextWidget(
                        text: textTitle,
                        style: TextStyles.textMedium.copyWith(
                          fontSize: 12,
                          color: ColorsAppLight.neutral50,
                        ),
                      ),
                    ],
                  ),
                ),
                if (isChangePassword == false)
                  Column(
                    children: [
                      const SizedBox(height: 24),
                      TextFieldWidget(
                        initialValue: initialName,
                        keyboardType: TextInputType.text,
                        isObscure: false,
                        onChanged: onChangedName,
                        validator: validatorName,
                        widthBorder: isErrorName == false ? 0.5 : 2,
                        colorErrorBorder: isErrorName == false
                            ? ColorsAppLight.outlineVariant
                            : ColorsAppLight.error60,
                      ),
                    ],
                  ),
                if (isChangePassword == true)
                  Column(
                    children: [
                      const SizedBox(height: 24),
                      TextWidget(
                        text: 'Senha atual',
                        style: TextStyles.textMedium.copyWith(
                          fontSize: 12,
                          color: ColorsAppLight.neutral50,
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                if (isChangePassword == false) const SizedBox(height: 24),
                if (isChangePassword == true)
                  TextFieldWidget(
                    keyboardType: TextInputType.text,
                    isObscure: isPasswordCurrent,
                    icon: GestureDetector(
                      onTap: onTapPasswordCurrent,
                      child: iconPasswordCurrent,
                    ),
                    onChanged: onChangedPasswordCurrent,
                    validator: validatorPasswordCurrent,
                    widthBorder: isErrorCurrentPassword == false ? 0.5 : 2,
                    colorErrorBorder: isErrorCurrentPassword == false
                        ? ColorsAppLight.outlineVariant
                        : ColorsAppLight.error60,
                  ),
                if (isChangePassword == true)
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        TextWidget(
                          text: 'Nova senha',
                          style: TextStyles.textMedium.copyWith(
                            fontSize: 12,
                            color: ColorsAppLight.neutral50,
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFieldWidget(
                          keyboardType: TextInputType.text,
                          isObscure: isObscureNewPassword,
                          icon: GestureDetector(
                            onTap: onTapNewPassword,
                            child: iconNewPass,
                          ),
                          onChanged: onChangedNewPassword,
                          validator: validatorNewPassword,
                          widthBorder: isErrorNewPassword == false ? 0.5 : 2,
                          colorErrorBorder: isErrorNewPassword == false
                              ? ColorsAppLight.outlineVariant
                              : ColorsAppLight.error60,
                        ),
                        const SizedBox(height: 16),
                        TextWidget(
                          text: 'Confirmar nova senha',
                          style: TextStyles.textMedium.copyWith(
                            fontSize: 12,
                            color: ColorsAppLight.neutral50,
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFieldWidget(
                          keyboardType: TextInputType.text,
                          isObscure: isObscureConfirmNewPass,
                          icon: GestureDetector(
                            onTap: onTapConfirmNewPass,
                            child: iconConfirmNewPass,
                          ),
                          onChanged: onChangedConfirmNewPass,
                          validator: validatorConfirmNewPass,
                          widthBorder:
                              isErrorConfirmNewPassword == false ? 0.5 : 2,
                          colorErrorBorder: isErrorConfirmNewPassword == false
                              ? ColorsAppLight.outlineVariant
                              : ColorsAppLight.error60,
                        ),
                        const SizedBox(height: 24),
                      ]),
                ButtonWidget(
                  width: size.width,
                  height: 48,
                  title: 'Confirmar',
                  style: TextStyles.textMedium.copyWith(
                    color: ColorsAppLight.white,
                    fontSize: 16,
                  ),
                  borderSide: ColorsAppLight.primary,
                  colorBackground: ColorsAppLight.primary,
                  onPressed: onPressedButtonConfirm,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
