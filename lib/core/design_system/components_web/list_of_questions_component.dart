
import '../../models/question_model.dart';
import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class ListOfQuestionsComponent extends StatelessWidget {
  final void Function()? onPressedEdit;
  final void Function()? onPressedDelet;
  final String titleEdit;
  final String titleDelet;
  final QuestionModel questionModel;

  const ListOfQuestionsComponent({
    Key? key,
    this.onPressedEdit,
    this.onPressedDelet,
    required this.titleEdit,
    required this.titleDelet,
    required this.questionModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.67,
      height: 134,
      decoration: const BoxDecoration(
        color: ColorsAppLight.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ButtonFilterWidget(
                      radiusCircular: 16,
                      title: questionModel.typeOfQuestion,
                      style: TextStyles.textRegular.copyWith(
                        color: ColorsAppLight.primary,
                        fontSize: 12,
                      ),
                      borderSide: ColorsAppLight.primary,
                      colorBackground: ColorsAppLight.primary90),
                  SizedBox(width: size.width * 0.005),
                  ButtonFilterWidget(
                      radiusCircular: 16,
                      title: questionModel.banking,
                      style: TextStyles.textRegular.copyWith(
                        color: ColorsAppLight.primary,
                        fontSize: 12,
                      ),
                      borderSide: ColorsAppLight.primary,
                      colorBackground: ColorsAppLight.primary90),
                  SizedBox(width: size.width * 0.005),
                  ButtonFilterWidget(
                      radiusCircular: 16,
                      title: questionModel.year,
                      style: TextStyles.textRegular.copyWith(
                        color: ColorsAppLight.primary,
                        fontSize: 12,
                      ),
                      borderSide: ColorsAppLight.primary,
                      colorBackground: ColorsAppLight.primary90),
                  SizedBox(width: size.width * 0.005),
                  ButtonFilterWidget(
                      radiusCircular: 16,
                      title: questionModel.position,
                      style: TextStyles.textRegular.copyWith(
                        color: ColorsAppLight.primary,
                        fontSize: 12,
                      ),
                      borderSide: ColorsAppLight.primary,
                      colorBackground: ColorsAppLight.primary90),
                  SizedBox(width: size.width * 0.005),
                  ButtonFilterWidget(
                      radiusCircular: 16,
                      title: questionModel.discipline,
                      style: TextStyles.textRegular.copyWith(
                        color: ColorsAppLight.primary,
                        fontSize: 12,
                      ),
                      borderSide: ColorsAppLight.primary,
                      colorBackground: ColorsAppLight.primary90),
                  SizedBox(width: size.width * 0.005),
                  ButtonFilterWidget(
                      radiusCircular: 16,
                      title: questionModel.organ,
                      style: TextStyles.textRegular.copyWith(
                        color: ColorsAppLight.primary,
                        fontSize: 12,
                      ),
                      borderSide: ColorsAppLight.primary,
                      colorBackground: ColorsAppLight.primary90),
                  SizedBox(width: size.width * 0.005),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'Questão ID #${questionModel.id.toString()}',
                        style: TextStyles.textBold.copyWith(
                          color: ColorsAppLight.neutral40,
                          fontSize: 16,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(height: size.height * 0.006),
                      TextWidget(
                        text: questionModel.statementOfTheQuestion,
                        style: TextStyles.textRegular.copyWith(
                          color: ColorsAppLight.neutral40,
                          fontSize: 16,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                ButtonWidget(
                  width: size.height * 0.14,
                  height: size.height * 0.052,
                  onPressed: onPressedEdit,
                  colorBackground: ColorsAppLight.white,
                  title: titleEdit,
                  style: TextStyles.textMedium.copyWith(
                    color: ColorsAppLight.neutral70,
                    fontSize: 14,
                  ),
                  borderSide: ColorsAppLight.neutral70,
                ),
                SizedBox(width: size.width * 0.005),
                ButtonWidget(
                  width: size.height * 0.14,
                  height: size.height * 0.052,
                  onPressed: onPressedDelet,
                  colorBackground: ColorsAppLight.white,
                  title: titleDelet,
                  style: TextStyles.textMedium.copyWith(
                    color: ColorsAppLight.red,
                    fontSize: 14,
                  ),
                  borderSide: ColorsAppLight.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
