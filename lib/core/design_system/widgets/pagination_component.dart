import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class PaginationComponent extends StatefulWidget {
  const PaginationComponent({super.key});

  @override
  State<PaginationComponent> createState() => _PaginationComponentState();
}

class _PaginationComponentState extends State<PaginationComponent> {
  int totalPage = 10;
  int limitePage = 7;
  int pageAtual = 1;

  @override
  Widget build(BuildContext context) {
    var padding = const EdgeInsets.only(
      left: 12,
      right: 12,
      top: 6,
      bottom: 6,
    );

    return Row(
      children: [
        for (var index = 0; index <= limitePage; index++)
          if (index == 0)
            Container(
                height: 32,
                width: 32,
                color: ColorsAppLight.white,
                child: Center(
                  child: IconButton(
                    /// TODO: ADICIONAR COMPORTAMENTO
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 18,
                      color: ColorsAppLight.neutral80,
                    ),
                  ),
                ))
          else if (index == limitePage - 1)
            Container(
                height: 32,
                width: 28,
                color: ColorsAppLight.white,
                child: Center(
                  child: Text(
                    '…',
                    style: TextStyles.textMedium.copyWith(
                      fontSize: 16,
                      color: ColorsAppLight.neutral50,
                    ),
                  ),
                ))
          else if (index == limitePage)
            Container(
              height: 32,
              decoration: BoxDecoration(
                color: pageAtual == index
                    ? ColorsAppLight.primary
                    : ColorsAppLight.white,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Padding(
                padding: padding,
                child: Center(
                  child: Text(
                    totalPage.toString(),
                    style: TextStyles.textMedium.copyWith(
                      color: pageAtual == index
                          ? ColorsAppLight.neutral95
                          : ColorsAppLight.neutral50,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            )
          else
            Container(
              height: 32,
              decoration: BoxDecoration(
                color: pageAtual == index
                    ? ColorsAppLight.primary
                    : ColorsAppLight.white,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Padding(
                padding: padding,
                child: Center(
                  child: Text(
                    index.toString(),
                    style: TextStyles.textMedium.copyWith(
                      color: pageAtual == index
                          ? ColorsAppLight.neutral95
                          : ColorsAppLight.neutral50,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
        Container(
          height: 52,
          width: 32,
          color: ColorsAppLight.white,
          child: IconButton(
            /// TODO: ADICIONAR COMPORTAMENTO

            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18,
              color: ColorsAppLight.neutral50,
            ),
          ),
        ),
      ],
    );
  }
}
