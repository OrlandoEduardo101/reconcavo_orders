import 'package:routefly/routefly.dart';

import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';
import 'select_category_widget.dart';

class EditingCategoriesMobileScreen extends StatefulWidget {
  final String titleAccountSelected;
  final List list;
  final bool isSubjectList;
  final List? listSubjectOne;
  final String? titleListSubjectOne;
  final String? titleListSubjectTwo;
  final List? listSubjectTwo;
  final bool isMoreSubject;
  const EditingCategoriesMobileScreen({
    super.key,
    required this.titleAccountSelected,
    required this.list,
    this.listSubjectOne,
    this.isSubjectList = false,
    this.titleListSubjectOne,
    this.titleListSubjectTwo,
    this.listSubjectTwo,
    this.isMoreSubject = false,
  });

  @override
  State<EditingCategoriesMobileScreen> createState() => _EditingCategoriesMobileScreenState();
}

final searchController = TextEditingController();
bool indexZeroIsSelected = false;
bool indexOneIsSelected = false;
bool indexTwoIsSelected = false;
bool indexThreeIsSelected = false;
bool indexFourIsSelected = false;
bool indexFiveIsSelected = false;
int initNumber = 0;
int currentCount = 0;

@override
void initState() {
  currentCount = initNumber;
  initState();
}

class _EditingCategoriesMobileScreenState extends State<EditingCategoriesMobileScreen> {
  void increment() {
    setState(() {
      currentCount++;
    });
  }

  void decrement() {
    setState(() {
      if (currentCount > 0) {
        currentCount--;
      }
    });
  }

  bool _isSelected(int index) {
    switch (index) {
      case 0:
        return indexZeroIsSelected;
      case 1:
        return indexOneIsSelected;
      case 2:
        return indexTwoIsSelected;
      case 3:
        return indexThreeIsSelected;
      case 4:
        return indexFourIsSelected;
      case 5:
        return indexFiveIsSelected;
      default:
        return false;
    }
  }

  void _toggleSelection(int index) {
    switch (index) {
      case 0:
        indexZeroIsSelected = !indexZeroIsSelected;
        if (indexZeroIsSelected) {
          increment();
        } else {
          decrement();
        }
        break;
      case 1:
        indexOneIsSelected = !indexOneIsSelected;
        if (indexOneIsSelected) {
          increment();
        } else {
          decrement();
        }
        break;
      case 2:
        indexTwoIsSelected = !indexTwoIsSelected;
        if (indexTwoIsSelected == true) {
          increment();
        } else {
          decrement();
        }
      case 3:
        indexThreeIsSelected = !indexThreeIsSelected;
        if (indexThreeIsSelected == true) {
          increment();
        } else {
          decrement();
        }
      case 4:
        indexFourIsSelected = !indexFourIsSelected;
        if (indexFourIsSelected == true) {
          increment();
        } else {
          decrement();
        }
      case 5:
        indexFiveIsSelected = !indexFiveIsSelected;
        if (indexFiveIsSelected == true) {
          increment();
        } else {
          decrement();
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarWidget(
            title: widget.titleAccountSelected,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 15, 16, 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFieldWidget(
                    onChanged: (value) {},
                    hintText: 'Pesquisar',
                    controller: searchController,
                  ),
                  const SizedBox(height: 10),
                  ContainerFilterSelectionsWidget(
                    titleAccountSelected: widget.titleAccountSelected,
                    onTapFilters: () {
                      setState(() {
                        // Routefly.push(routePaths
                        //     .pages.filtersSelectedClient.filterSelections);
                      });
                    },
                  ),
                  if (widget.isSubjectList == false)
                    SizedBox(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: widget.list.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return SelectCategoryWidget(
                            titleCategory: widget.list[index],
                            checkBoxIsSelected: _isSelected(index),
                            onChanged: (value) {
                              setState(() {
                                _toggleSelection(index);
                              });
                            },
                          );
                        },
                      ),
                    ),
                  if (widget.isSubjectList == true || widget.isMoreSubject == true)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 7),
                        Text(
                          widget.titleListSubjectOne!,
                          style: TextStyles.textMedium.copyWith(
                            color: ColorsAppLight.primary10,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemCount: widget.listSubjectOne!.length,
                            itemBuilder: (context, index) {
                              return SelectCategoryWidget(
                                titleCategory: widget.listSubjectOne![index],
                                checkBoxIsSelected: _isSelected(index),
                                onChanged: (value) {
                                  setState(() {
                                    _toggleSelection(index);
                                  });
                                },
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          widget.titleListSubjectTwo!,
                          style: TextStyles.textMedium.copyWith(
                            color: ColorsAppLight.primary10,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemCount: widget.listSubjectTwo!.length,
                            itemBuilder: (context, index) {
                              return SelectCategoryWidget(
                                titleCategory: widget.listSubjectTwo![index],
                                checkBoxIsSelected: _isSelected(index),
                                onChanged: (value) {
                                  setState(() {
                                    _toggleSelection(index);
                                  });
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(height: 23),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonWidget(
                        height: 48,
                        width: 136,
                        title: 'Limpar filtros',
                        style: TextStyles.textRegular.copyWith(
                          fontSize: 16,
                          color: ColorsAppLight.primary,
                        ),
                        borderSide: ColorsAppLight.primary,
                        colorBackground: ColorsAppLight.white,
                        onPressed: () {
                          setState(() {
                            currentCount = 0;
                            indexZeroIsSelected = false;
                            indexOneIsSelected = false;
                            indexTwoIsSelected = false;
                            indexThreeIsSelected = false;
                            indexFourIsSelected = false;
                            indexFiveIsSelected = false;
                          });
                        },
                      ),
                      const SizedBox(width: 16),
                      ButtonWidget(
                        height: 48,
                        width: 136,
                        title: 'Concluir',
                        style: TextStyles.textRegular.copyWith(
                          fontSize: 16,
                          color: ColorsAppLight.white,
                        ),
                        borderSide: ColorsAppLight.primary,
                        colorBackground: ColorsAppLight.primary,
                        onPressed: () {
                          setState(() {
                            Routefly.pop(context);
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
