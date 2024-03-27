// import '../../design_system.dart';

// class PageItem extends StatefulWidget {
//   final int page;
//   final bool isChecked;
//   final ValueChanged<int> onTap;
//   const PageItem(
//       {Key? key,
//       required this.page,
//       required this.isChecked,
//       required this.onTap})
//       : super(key: key);

//   @override
//   PageItemState createState() => PageItemState();
// }

// class PageItemState extends State<PageItem> {
//   Color normalBackgroundColor = Colors.white;
//   Color normalHighlightColor = ColorsAppLight.primary;

//   late Color backgroundColor = normalBackgroundColor;
//   late Color highlightColor = normalHighlightColor;

//   @override
//   void didUpdateWidget(covariant PageItem oldWidget) {
//     super.didUpdateWidget(oldWidget);

//     if (oldWidget.isChecked != widget.isChecked) {
//       if (!widget.isChecked) {
//         setState(() {
//           backgroundColor = normalBackgroundColor;
//           highlightColor = normalHighlightColor;
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onHover: (background) {
//         if (widget.isChecked) return;
//         setState(() {
//           backgroundColor =
//               background ? ColorsAppLight.primary80 : normalBackgroundColor;
//           highlightColor =
//               background ? ColorsAppLight.primary : normalHighlightColor;
//         });
//       },
//       onTap: () {
//         widget.onTap(widget.page);
//       },
//       child: Container(
//         color: widget.isChecked ? highlightColor : backgroundColor,
//         child: Padding(
//           padding:
//               const EdgeInsets.only(left: 12, right: 12, top: 6, bottom: 6),
//           child: Text(
//             widget.page.toString(),
//             style: TextStyles.textMedium.copyWith(
//               color: widget.isChecked ? Colors.white : ColorsAppLight.neutral50,
//               fontWeight: FontWeight.w600,
//               fontSize: 16,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
