import '../../design_system.dart';
import '../../styles/colors_app.dart';
import '../../styles/text_styles.dart';

class CustomRadioButton extends StatelessWidget {
  final void Function()? onTap;
  final void Function(String?)? onChangedTrueOrFalse;
  final void Function(String?)? onChangedMultiple;
  final String valueTrueOrFalse;
  final String valueMultiple;

  final Color? colorTrueOrFalse;
  final Color? colorMultiple;
  const CustomRadioButton({
    Key? key,
    this.onTap,
    this.onChangedTrueOrFalse,
    this.onChangedMultiple,
    required this.valueTrueOrFalse,
    required this.valueMultiple,
    this.colorTrueOrFalse,
    this.colorMultiple,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? gender;
    Size size = MediaQuery.of(context).size;
    SizedBox sizeDezesseis = SizedBox(height: size.height * 0.019);

    return Column(
      children: [
        SizedBox(
          height: 24,
          child: RadioListTile(
            splashRadius: 0,
            contentPadding: EdgeInsets.zero,
            toggleable: true,
            fillColor: MaterialStateProperty.all(colorTrueOrFalse),
            value: valueTrueOrFalse,
            groupValue: gender,
            onChanged: onChangedTrueOrFalse,
            title: Flexible(
              child: TextWidget(
                text: 'Verdadeiro ou Falso',
                maxLines: 2,
                style: TextStyles.textMedium.copyWith(
                  fontSize: 16,
                  color: ColorsAppLight.neutral50,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ),
        sizeDezesseis,
        SizedBox(
          height: 24,
          child: RadioListTile(
            splashRadius: 0,
            contentPadding: EdgeInsets.zero,
            toggleable: true,
            fillColor: MaterialStateProperty.all(colorMultiple),
            value: valueMultiple,
            groupValue: gender,
            onChanged: onChangedMultiple,
            title: Flexible(
              child: TextWidget(
                text: 'Múltipla Escolha',
                maxLines: 2,
                style: TextStyles.textMedium.copyWith(
                  fontSize: 16,
                  color: ColorsAppLight.neutral50,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ),
      ],
    );

    /// TODO: ARRUMAR DEPOIS SE TIVER TEMPO PRA FICAR IGUAL AO MOCKUP
    // return InkWell(
    //   onTap: onTap,
    //   child: Container(
    //       decoration: BoxDecoration(
    //         color: Theme.of(context).primaryColor.withOpacity(0.4),
    //         borderRadius: BorderRadius.circular(16),
    //       ),
    //       child: Container(
    //         width: 16,
    //         height: 16,
    //         decoration: BoxDecoration(
    //           color: ColorsAppLight.white,
    //           borderRadius: BorderRadius.circular(100),
    //           border: Border.all(
    //             color: color,
    //             width: width,
    //           ),
    //         ),
    //       )),
    // );
  }
}
