import 'package:reconcavo_orders/core/design_system/styles/colors_app.dart';
import 'package:reconcavo_orders/core/design_system/styles/text_styles.dart';

import '../design_system.dart';
import 'quantity_circle_widget.dart';

class CategoriesMyNotebookWidget extends StatelessWidget {
  final String titleType;
  final int? quantity;
  final void Function()? onTapOption;
  final bool isTag;
  final int? itemCount;
  final List? list;
  final bool isLast;
  final double right;
  final void Function()? onTapClear;
  final void Function()? onTapTag;
  final bool isSelected;
  final Color? colorQuantity;
  final Color? colorContainer;

  const CategoriesMyNotebookWidget({
    super.key,
    required this.titleType,
    this.quantity,
    this.onTapOption,
    this.isTag = false,
    this.itemCount,
    this.list,
    this.isLast = false,
    this.right = 8,
    this.onTapClear,
    this.onTapTag,
    this.isSelected = false,
    this.colorQuantity,
    this.colorContainer,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: isTag == true ? null : onTapOption,
          child: Row(
            children: [
              Text(
                titleType,
                style: TextStyles.textRegular.copyWith(
                  color: ColorsAppLight.neutral40,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              if (isTag == false)
                QuantityCircleWidget(
                  quantity: quantity,
                  colorContainer: currentCount <= 0 ? ColorsAppLight.neutral90 : ColorsAppLight.primary,
                  colorQuantity: currentCount <= 0 ? ColorsAppLight.onPrimaryFixed : ColorsAppLight.white,
                ),
            ],
          ),
        ),
        if (isTag == true)
          Column(
            children: [
              const SizedBox(height: 8),
              Row(
                children: [
                  SizedBox(
                    height: 30,
                    width: size.width * 0.914,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: itemCount,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: right),
                          child: InkWell(
                            onTap: onTapTag,
                            child: ContainerTagWidget(
                              isSelected: isSelected,
                              padding: const EdgeInsets.only(right: 8, left: 8, top: 5, bottom: 5),
                              text: list![index],
                              textStyle: TextStyles.textRegular.copyWith(
                                color: isSelected == false ? ColorsAppLight.textTagNotebook : ColorsAppLight.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        if (isTag == false) const SizedBox(height: 15),
        if (isTag == true) const SizedBox(height: 8),
        if (isLast == false) const Divider(),
        const SizedBox(height: 8),
      ],
    );
  }
}
