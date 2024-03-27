import '../design_system.dart';
import '../styles/colors_app.dart';
import 'buttons/add_new_tag_button.dart';

class DropDownWidget extends StatefulWidget {
  final TextEditingController? controller;
  final void Function()? onTapTextField;
  final void Function(String) onChangedTextField;
  final Widget? Function(BuildContext, int) itemBuilderWidget;
  final void Function()? onTapAdd;
  final int? itemCount;
  final bool isDropdown;
  const DropDownWidget({
    super.key,
    this.controller,
    this.onTapTextField,
    required this.onChangedTextField,
    required this.itemBuilderWidget,
    this.onTapAdd,
    this.itemCount,
    required this.isDropdown,
  });

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  bool dropdownAberto = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        TextFieldWidget(
          hintText: 'Digite o termo',
          controller: widget.controller,
          onTap: widget.onTapTextField,
          onChanged: widget.onChangedTextField,
        ),
        if (widget.isDropdown == true)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              height: size.height * 0.17,
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorsAppLight.outlineVariant,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: widget.itemCount,
                        itemBuilder: widget.itemBuilderWidget,
                        // (context, index) {
                        // final opcao = resultList[index];
                        // if (opcao.toLowerCase().contains(
                        //     _textEditingController.text.toLowerCase())) {
                        //   return Container(
                        //     margin: EdgeInsets.zero,
                        //     width: double.infinity,
                        //     color: opcao == selectedItem
                        //         ? ColorsAppLight.primary
                        //         : ColorsAppLight.white,
                        //     child: ListTile(
                        //       title: Text(
                        //         opcao,
                        //         style: TextStyles.textMedium.copyWith(
                        //           fontSize: 16,
                        //           color: opcao == selectedItem
                        //               ? ColorsAppLight.white
                        //               : ColorsAppLight.outline,
                        //         ),
                        //       ),
                        //       selected:
                        //           opcao == selectedItem ? true : false,
                        //       onTap: () {
                        //         setState(() {
                        //           _onSelected(opcao);
                        //           _textEditingController.text = opcao;
                        //         });
                        //       },
                        //     ),
                        //   );
                        // }
                        // return const SizedBox();
                        //}
                      ),
                    ),
                  ),
                  AddNewTagButton(
                    height: size.height * 0.04,
                    widthPadding: size.width * 0.01,
                    width: size.width * 0.003,
                    onTapAdd: widget.onTapAdd,
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
