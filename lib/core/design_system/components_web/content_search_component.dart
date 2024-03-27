import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';
import '../widgets/search _bar_widget.dart';

class ContentSearchComponent extends StatelessWidget {
  final String titlePathPage;
  final String titlePage;
  final String textFirstButton;
  final void Function()? onPressedFirstButton;
  final String? textSecondButton;
  final void Function()? onPressedSecondButton;
  final void Function(String)? onSubmitted;
  final String textSearchButton;
  final void Function()? onPressedSearchButton;
  final String textFilterButton;
  final void Function()? onPressedFilterButton;
  final String? textOfQuantities;
  final bool istextOfQuantities;
  final String hintTextSearch;
  final bool isSecondButton;

  const ContentSearchComponent({
    Key? key,
    required this.titlePathPage,
    required this.titlePage,
    required this.textFirstButton,
    this.onPressedFirstButton,
    this.textSecondButton,
    this.onPressedSecondButton,
    this.onSubmitted,
    required this.textSearchButton,
    this.onPressedSearchButton,
    required this.textFilterButton,
    this.onPressedFilterButton,
    this.textOfQuantities,
    required this.istextOfQuantities,
    required this.hintTextSearch,
    required this.isSecondButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.67,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: titlePathPage,
                    style: TextStyles.textRegular.copyWith(
                      fontSize: 16,
                      color: ColorsAppLight.neutral70,
                    ),
                  ),
                  TextWidget(
                    text: titlePage,
                    style: TextStyles.textBold.copyWith(
                      fontSize: 24,
                      color: ColorsAppLight.neutral35,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButtonWidget(
                height: size.height * 0.055,
                width: size.width * 0.12,
                colorBackground: ColorsAppLight.save,
                isIcon: const Icon(
                  IconsApp.plus,
                  color: ColorsAppLight.white,
                  size: 18,
                ),
                outlineColor: ColorsAppLight.save,
                title: textFirstButton,
                style: TextStyles.textMedium.copyWith(
                  color: ColorsAppLight.white,
                  fontSize: 16,
                ),
                onPressed: onPressedFirstButton,
              ),
              SizedBox(width: size.width * 0.01),
              isSecondButton == true
                  ? IconButtonWidget(
                      height: size.height * 0.055,
                      width: size.width * 0.14,
                      colorBackground: ColorsAppLight.white,
                      isIcon: const Icon(
                        IconsApp.plus,
                        color: ColorsAppLight.save,
                        size: 18,
                      ),
                      outlineColor: ColorsAppLight.save,
                      title: textSecondButton!,
                      style: TextStyles.textMedium.copyWith(
                        color: ColorsAppLight.save,
                        fontSize: 16,
                      ),
                      onPressed: onPressedSecondButton,
                    )
                  : const SizedBox()
            ],
          ),
          SizedBox(
            height: size.height * 0.024,
          ),
          Row(
            children: [
              Container(
                height: 80,
                width: size.width * 0.67,
                decoration: BoxDecoration(
                  color: ColorsAppLight.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    shadowTres,
                  ],
                ),
                child: Row(
                  children: [
                    Flexible(
                      child: SearchBarWidget(
                        height: 48,
                        width: size.width * 0.47,
                        hintText: hintTextSearch,
                        style: TextStyles.textRegular.copyWith(
                          fontSize: 16,
                          color: ColorsAppLight.neutral70,
                        ),
                        icon: const Icon(
                          Icons.search,
                          color: ColorsAppLight.neutral70,
                          size: 16,
                        ),
                        onSubmitted: onSubmitted,
                      ),
                    ),
                    ButtonWidget(
                      height: 48,
                      width: size.width * 0.08,
                      colorBackground: ColorsAppLight.primary,
                      title: textSearchButton,
                      style: TextStyles.textMedium.copyWith(
                        color: ColorsAppLight.white,
                        fontSize: 14,
                      ),
                      borderSide: ColorsAppLight.primary,
                      onPressed: onPressedSearchButton,
                    ),
                    SizedBox(width: size.width * 0.006),
                    ButtonWidget(
                      height: 48,
                      width: size.width * 0.08,
                      colorBackground: ColorsAppLight.white,
                      title: textFilterButton,
                      style: TextStyles.textMedium.copyWith(
                        color: ColorsAppLight.primary,
                        fontSize: 14,
                      ),
                      borderSide: ColorsAppLight.primary,
                      onPressed: onPressedFilterButton,
                    ),
                  ],
                ),
              ),
            ],
          ),
          istextOfQuantities == true
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.006,
                          ),
                          child: TextWidget(
                            text: textOfQuantities!,
                            style: TextStyles.textRegular.copyWith(
                              color: ColorsAppLight.neutral70,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
