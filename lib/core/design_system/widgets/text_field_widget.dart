import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class TextFieldWidget extends StatelessWidget {
  final TextInputType? keyboardType;
  final String? hintText;
  final Widget? icon;
  final bool isObscure;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final void Function()? onTap;
  final TextEditingController? controller;
  final double widthBorder;
  final Color colorErrorBorder;
  final String? initialValue;

  const TextFieldWidget({
    super.key,
    this.keyboardType,
    this.icon,
    this.isObscure = false,
    this.validator,
    this.onChanged,
    this.hintText,
    this.onTap,
    this.controller,
    this.widthBorder = 0.5,
    this.colorErrorBorder = ColorsAppLight.outlineVariant,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscure,
      initialValue: initialValue,
      keyboardType: keyboardType,
      validator: validator,
      onChanged: onChanged,
      onTap: onTap,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: icon,
        hintText: hintText,
        hintStyle: TextStyles.textMedium.copyWith(
          fontSize: 16,
          color: ColorsAppLight.outline,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: widthBorder,
            color: colorErrorBorder,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: widthBorder,
            color: colorErrorBorder,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
