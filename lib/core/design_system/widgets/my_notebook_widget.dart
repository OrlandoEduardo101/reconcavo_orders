import '../../models/question_model.dart';
import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class MyNotebookWidget extends StatelessWidget {
  final QuestionModel questionModel;
  final void Function()? onTap;
  final String titleNotebook;

  const MyNotebookWidget({
    super.key,
    required this.questionModel,
    this.onTap,
    required this.titleNotebook,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.zero,
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: ColorsAppLight.primary,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  IconsApp.graduation,
                  color: ColorsAppLight.white,
                  size: 18,
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleNotebook,
                    style: TextStyles.textBold.copyWith(
                      fontSize: 18,
                      color: ColorsAppLight.neutral40,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        '${questionListData.length} questões',
                        style: TextStyles.textMedium.copyWith(
                          fontSize: 14,
                          color: ColorsAppLight.neutral40,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                        child: VerticalDivider(
                          color: ColorsAppLight.neutral40,
                        ),
                      ),
                      Text(
                        'Criado em ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                        style: TextStyles.textMedium.copyWith(
                          fontSize: 14,
                          color: ColorsAppLight.neutral40,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: ColorsAppLight.iconRightoutlined,
              )
            ],
          ),
        ),
        const SizedBox(height: 8),
        const Divider(),
        const SizedBox(height: 8),
      ],
    );
  }
}
