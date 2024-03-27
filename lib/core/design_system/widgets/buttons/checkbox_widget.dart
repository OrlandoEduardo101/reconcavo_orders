import '../../design_system.dart';
import '../../styles/colors_app.dart';

class CheckBoxWidget extends StatelessWidget {
  final bool checkBoxIsSelected;
  final void Function(bool?)? onChanged;

  const CheckBoxWidget(
      {super.key, required this.checkBoxIsSelected, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        side: const BorderSide(
          width: 0.5,
          color: ColorsAppLight.neutral80,
        ),
      ),
      activeColor: ColorsAppLight.primary,
      value: checkBoxIsSelected,
      onChanged: onChanged,
    );
  }
}
