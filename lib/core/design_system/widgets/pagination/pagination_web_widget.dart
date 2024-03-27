// import 'dart:math';
// import 'package:ta_na_lousa_app/core/design_system/widgets/pagination/page_control_button.dart';
// import '../../design_system.dart';
// import 'page_item.dart';

// class PaginationWebWidget extends StatefulWidget {
//   final int currentPage;
//   final int totalPage;
//   final ValueChanged<int> onPageChanged;
//   final int displayItemCount;
//   const PaginationWebWidget(
//       {Key? key,
//       required this.onPageChanged,
//       required this.currentPage,
//       required this.totalPage,
//       this.displayItemCount = 11})
//       : super(key: key);

//   @override
//   PaginationWebWidgetState createState() => PaginationWebWidgetState();
// }

// class PaginationWebWidgetState extends State<PaginationWebWidget> {
//   late int currentPage = widget.currentPage;
//   late int totalPage = widget.totalPage;
//   late int displayItemCount = widget.displayItemCount;
//   // late TextEditingController controller = TextEditingController();

//   @override
//   void didUpdateWidget(covariant PaginationWebWidget oldWidget) {
//     super.didUpdateWidget(oldWidget);

//     if (oldWidget.currentPage != widget.currentPage ||
//         oldWidget.totalPage != widget.totalPage) {
//       setState(() {
//         currentPage = widget.currentPage;
//         totalPage = widget.totalPage;
//       });
//     }
//   }

//   void _updatePage(int page) {
//     setState(() {
//       currentPage = page;
//     });
//     widget.onPageChanged(page);
//   }

//   List _buildPageItemList() {
//     List widgetList = [];

//     widgetList.add(
//       PageControlButton(
//         // SETA DA ESQUERDA


//         enable: currentPage > 1,
//         icon: const Icon(
//           Icons.arrow_back_ios_rounded,
//           size: 18,
//           color: ColorsAppLight.neutral80,
//         ),
//         onTap: () {
//           _updatePage(currentPage - 1);
//         },
//       ),
//     );

//     int leftPageItemCount = (displayItemCount / 2).floor();

//     int rightPageItemCount = max(0, displayItemCount - leftPageItemCount - 1);

//     int startPage = max(
//         1,
//         currentPage -
//             max(leftPageItemCount,
//                 (displayItemCount - totalPage + currentPage - 1)));

//     int endPage = min(
//         totalPage, // quantas pages sao?
//         max(displayItemCount, currentPage + rightPageItemCount));

//     for (; startPage <= endPage; startPage++) {
//       widgetList.add(PageItem(
//         page: startPage,
//         isChecked: startPage == currentPage,
//         onTap: (page) {
//           _updatePage(page); // SELECIONAR A PAGE
//         },
//       ));
//     }

//     widgetList.add(PageControlButton(
//       enable: currentPage < totalPage,
//       icon: const Icon(
//         Icons.arrow_forward_ios_rounded,
//         size: 18,
//         color: ColorsAppLight.neutral50,
//       ),
//       onTap: () {
//         // MOVER A SETA DIREITA
//         _updatePage(currentPage + 1);
//       },
//     ));
//     return widgetList;
//   }

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//             width: size.width * 0.2,
//             height: size.height * 0.1,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(6),
//             ),
//             child: ListView(
//               padding: const EdgeInsets.all(8),
//               scrollDirection: Axis.horizontal,
//               children: [
//                 ..._buildPageItemList(),
//               ],
//             )),
//       ],
//     );
//   }
// }
