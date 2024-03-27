import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class TagsForYearMobileComponent extends StatefulWidget {
  final void Function()? onTapSeeMore;
  final bool isSeeMore;

  const TagsForYearMobileComponent({
    super.key,
    this.onTapSeeMore,
    this.isSeeMore = false,
  });

  @override
  State<TagsForYearMobileComponent> createState() =>
      _TagsForYearMobileComponentState();
}

bool isSelectedIndexZero = false;
bool isSelectedIndexOne = false;
bool isSelectedIndexTwo = false;
bool isSelectedIndexThree = false;
bool isSelectedIndexFour = false;
bool isSelectedIndexFive = false;
bool isSelectedIndexSix = false;
bool isSelectedIndexSeven = false;
bool isSelectedIndexEight = false;
bool isSelectedIndexNine = false;
bool isSelectedIndexTen = false;
bool isSelectedIndexEleven = false;
bool isSelectedIndexTwelve = false;
bool isSelectedIndexThirteen = false;
bool isSelectedIndexFourteen = false;
bool isSelectedIndexFifteen = false;
bool isSelectedIndexSixteen = false;
bool isSelectedIndexSeventeen = false;
bool isSelectedIndexEighteen = false;
bool isSelectedIndexNineteen = false;

class _TagsForYearMobileComponentState
    extends State<TagsForYearMobileComponent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.isSeeMore == false ? 125 : 275,
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextWidget(
              text: listFilters[5],
              style: TextStyles.textRegular.copyWith(
                color: ColorsAppLight.neutral40,
                fontSize: 16,
              ),
            ),
            TextButtonBorder(
              height: 25,
              width: 70,
              title: 'Limpar',
              style: TextStyles.textRegular.copyWith(
                color: ColorsAppLight.onPrimaryFixed,
                fontSize: 12,
              ),
              colorBackground: ColorsAppLight.neutral90,
              onTap: () {
                setState(() {
                  isSelectedIndexZero = false;
                  isSelectedIndexOne = false;
                  isSelectedIndexTwo = false;
                  isSelectedIndexThree = false;
                  isSelectedIndexFour = false;
                  isSelectedIndexFive = false;
                  isSelectedIndexSix = false;
                  isSelectedIndexSeven = false;
                  isSelectedIndexEight = false;
                  isSelectedIndexNine = false;
                  isSelectedIndexTen = false;
                  isSelectedIndexEleven = false;
                  isSelectedIndexTwelve = false;
                  isSelectedIndexThirteen = false;
                  isSelectedIndexFourteen = false;
                  isSelectedIndexFifteen = false;
                  isSelectedIndexSixteen = false;
                  isSelectedIndexSeventeen = false;
                  isSelectedIndexEighteen = false;
                  isSelectedIndexNineteen = false;
                });
              },
            ),
          ]),
          const SizedBox(height: 14),
          Row(
            children: [
              ContainerTagWidget(
                width: 73,
                isSelected: isSelectedIndexZero,
                onTapTag: () {
                  setState(() {
                    isSelectedIndexZero = !isSelectedIndexZero;
                  });
                },
                padding: const EdgeInsets.only(
                    right: 16, left: 16, top: 6, bottom: 6),
                text: listYears[0],
                textStyle: TextStyles.textRegular.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 16),
              ContainerTagWidget(
                width: 73,
                isSelected: isSelectedIndexOne,
                onTapTag: () {
                  setState(() {
                    isSelectedIndexOne = !isSelectedIndexOne;
                  });
                },
                padding: const EdgeInsets.only(
                    right: 16, left: 16, top: 6, bottom: 6),
                text: listYears[1],
                textStyle: TextStyles.textRegular.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 16),
              ContainerTagWidget(
                width: 73,
                isSelected: isSelectedIndexTwo,
                onTapTag: () {
                  setState(() {
                    isSelectedIndexTwo = !isSelectedIndexTwo;
                  });
                },
                padding: const EdgeInsets.only(
                    right: 16, left: 16, top: 6, bottom: 6),
                text: listYears[2],
                textStyle: TextStyles.textRegular.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 16),
              ContainerTagWidget(
                width: 73,
                isSelected: isSelectedIndexThree,
                onTapTag: () {
                  setState(() {
                    isSelectedIndexThree = !isSelectedIndexThree;
                  });
                },
                padding: const EdgeInsets.only(
                    right: 16, left: 16, top: 6, bottom: 6),
                text: listYears[3],
                textStyle: TextStyles.textRegular.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              ContainerTagWidget(
                width: 73,
                isSelected: isSelectedIndexFour,
                onTapTag: () {
                  setState(() {
                    isSelectedIndexFour = !isSelectedIndexFour;
                  });
                },
                padding: const EdgeInsets.only(
                    right: 16, left: 16, top: 6, bottom: 6),
                text: listYears[4],
                textStyle: TextStyles.textRegular.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 16),
              ContainerTagWidget(
                width: 73,
                isSelected: isSelectedIndexFive,
                onTapTag: () {
                  setState(() {
                    isSelectedIndexFive = !isSelectedIndexFive;
                  });
                },
                padding: const EdgeInsets.only(
                    right: 16, left: 16, top: 6, bottom: 6),
                text: listYears[5],
                textStyle: TextStyles.textRegular.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 16),
              ContainerTagWidget(
                width: 73,
                isSelected: isSelectedIndexSix,
                onTapTag: () {
                  setState(() {
                    isSelectedIndexSix = !isSelectedIndexSix;
                  });
                },
                padding: const EdgeInsets.only(
                    right: 16, left: 16, top: 6, bottom: 6),
                text: listYears[6],
                textStyle: TextStyles.textRegular.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 16),
              if (widget.isSeeMore == false)
                TextButtonBorder(
                  height: 25,
                  width: 74,
                  title: 'Ver mais',
                  style: TextStyles.textRegular.copyWith(
                    color: ColorsAppLight.onPrimaryFixed,
                    fontSize: 12,
                  ),
                  colorBackground: ColorsAppLight.neutral90,
                  onTap: widget.onTapSeeMore,
                ),
              if (widget.isSeeMore == true)
                ContainerTagWidget(
                  width: 73,
                  isSelected: isSelectedIndexSeven,
                  onTapTag: () {
                    setState(() {
                      isSelectedIndexSeven = !isSelectedIndexSeven;
                    });
                  },
                  padding: const EdgeInsets.only(
                      right: 16, left: 16, top: 6, bottom: 6),
                  text: listYears[7],
                  textStyle: TextStyles.textRegular.copyWith(
                    fontSize: 12,
                  ),
                ),
            ],
          ),
          if (widget.isSeeMore == false) const Divider(),
          if (widget.isSeeMore == true)
            Column(
              children: [
                const SizedBox(height: 8),
                Row(
                  children: [
                    ContainerTagWidget(
                      width: 73,
                      isSelected: isSelectedIndexEight,
                      onTapTag: () {
                        setState(() {
                          isSelectedIndexEight = !isSelectedIndexEight;
                        });
                      },
                      padding: const EdgeInsets.only(
                          right: 16, left: 16, top: 6, bottom: 6),
                      text: listYears[8],
                      textStyle: TextStyles.textRegular.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 16),
                    ContainerTagWidget(
                      width: 73,
                      isSelected: isSelectedIndexNine,
                      onTapTag: () {
                        setState(() {
                          isSelectedIndexNine = !isSelectedIndexNine;
                        });
                      },
                      padding: const EdgeInsets.only(
                          right: 16, left: 16, top: 6, bottom: 6),
                      text: listYears[9],
                      textStyle: TextStyles.textRegular.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 16),
                    ContainerTagWidget(
                      width: 73,
                      isSelected: isSelectedIndexTen,
                      onTapTag: () {
                        setState(() {
                          isSelectedIndexTen = !isSelectedIndexTen;
                        });
                      },
                      padding: const EdgeInsets.only(
                          right: 16, left: 16, top: 6, bottom: 6),
                      text: listYears[10],
                      textStyle: TextStyles.textRegular.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 16),
                    ContainerTagWidget(
                      width: 73,
                      isSelected: isSelectedIndexEleven,
                      onTapTag: () {
                        setState(() {
                          isSelectedIndexEleven = !isSelectedIndexEleven;
                        });
                      },
                      padding: const EdgeInsets.only(
                          right: 16, left: 16, top: 6, bottom: 6),
                      text: listYears[11],
                      textStyle: TextStyles.textRegular.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    ContainerTagWidget(
                      width: 73,
                      isSelected: isSelectedIndexTwelve,
                      onTapTag: () {
                        setState(() {
                          isSelectedIndexTwelve = !isSelectedIndexTwelve;
                        });
                      },
                      padding: const EdgeInsets.only(
                          right: 16, left: 16, top: 6, bottom: 6),
                      text: listYears[12],
                      textStyle: TextStyles.textRegular.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 16),
                    ContainerTagWidget(
                      width: 73,
                      isSelected: isSelectedIndexThirteen,
                      onTapTag: () {
                        setState(() {
                          isSelectedIndexThirteen = !isSelectedIndexThirteen;
                        });
                      },
                      padding: const EdgeInsets.only(
                          right: 16, left: 16, top: 6, bottom: 6),
                      text: listYears[13],
                      textStyle: TextStyles.textRegular.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 16),
                    ContainerTagWidget(
                      width: 73,
                      isSelected: isSelectedIndexFourteen,
                      onTapTag: () {
                        setState(() {
                          isSelectedIndexFourteen = !isSelectedIndexFourteen;
                        });
                      },
                      padding: const EdgeInsets.only(
                          right: 16, left: 16, top: 6, bottom: 6),
                      text: listYears[14],
                      textStyle: TextStyles.textRegular.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 16),
                    ContainerTagWidget(
                      width: 73,
                      isSelected: isSelectedIndexFifteen,
                      onTapTag: () {
                        setState(() {
                          isSelectedIndexFifteen = !isSelectedIndexFifteen;
                        });
                      },
                      padding: const EdgeInsets.only(
                          right: 16, left: 16, top: 6, bottom: 6),
                      text: listYears[15],
                      textStyle: TextStyles.textRegular.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    ContainerTagWidget(
                      width: 73,
                      isSelected: isSelectedIndexSixteen,
                      onTapTag: () {
                        setState(() {
                          isSelectedIndexSixteen = !isSelectedIndexSixteen;
                        });
                      },
                      padding: const EdgeInsets.only(
                          right: 16, left: 16, top: 6, bottom: 6),
                      text: listYears[16],
                      textStyle: TextStyles.textRegular.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 16),
                    ContainerTagWidget(
                      width: 73,
                      isSelected: isSelectedIndexSeventeen,
                      onTapTag: () {
                        setState(() {
                          isSelectedIndexSeventeen = !isSelectedIndexSeventeen;
                        });
                      },
                      padding: const EdgeInsets.only(
                          right: 16, left: 16, top: 6, bottom: 6),
                      text: listYears[17],
                      textStyle: TextStyles.textRegular.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 16),
                    ContainerTagWidget(
                      width: 73,
                      isSelected: isSelectedIndexEighteen,
                      onTapTag: () {
                        setState(() {
                          isSelectedIndexEighteen = !isSelectedIndexEighteen;
                        });
                      },
                      padding: const EdgeInsets.only(
                          right: 16, left: 16, top: 6, bottom: 6),
                      text: listYears[18],
                      textStyle: TextStyles.textRegular.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 16),
                    ContainerTagWidget(
                      width: 73,
                      isSelected: isSelectedIndexNineteen,
                      onTapTag: () {
                        setState(() {
                          isSelectedIndexNineteen = !isSelectedIndexNineteen;
                        });
                      },
                      padding: const EdgeInsets.only(
                          right: 16, left: 16, top: 6, bottom: 6),
                      text: listYears[19],
                      textStyle: TextStyles.textRegular.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButtonBorder(
                      height: 25,
                      width: 74,
                      title: 'Ver menos',
                      style: TextStyles.textRegular.copyWith(
                        color: ColorsAppLight.onPrimaryFixed,
                        fontSize: 12,
                      ),
                      colorBackground: ColorsAppLight.neutral90,
                      onTap: widget.onTapSeeMore,
                    ),
                  ],
                ),
                const Divider()
              ],
            ),
        ],
      ),
    );
  }
}
