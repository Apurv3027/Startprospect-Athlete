import 'package:flutter/material.dart';

CommonShowModalBottomSheet({
  required BuildContext context,
  required Widget Function(BuildContext) builder,
  Color? backgroundColor,
  bool isScrollControlled = false,
}) {
  return showModalBottomSheet(
    isScrollControlled: isScrollControlled,
    //constraints: const BoxConstraints(maxHeight: double.infinity),
    backgroundColor: backgroundColor,
    context: context,
    builder: builder,
  );
}

// showModalBottomSheet(
//   isScrollControlled: true,
//   //constraints: const BoxConstraints(maxHeight: double.infinity),
//   backgroundColor: Colors.transparent,
//   context: context,
//   builder: (context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 0.65,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border.all(color: Colors.blue, width: 3),
//           borderRadius: const BorderRadius.only(
//               topLeft: Radius.circular(20), topRight: Radius.circular(20))),
//       child: Column(
//         children: [
//           Center(
//             child: Image.asset(
//               'assets/image/Rectangle 5201.png',
//               height: 4,
//               width: 50,
//             ).paddingOnly(top: 20,),
//           ),
//           Center(
//             child: Text(
//               'Report Post',
//               style: TU.appBarActionTxt.copyWith(color: Colors.black, fontSize: 14),
//             ).paddingOnly(top: 17,bottom: 17,),
//           ),
//           const Divider(),
//           const Text(
//             'Reason for reporting ',
//             style: TU.bsBTN,
//           ).paddingOnly(top: 21, left: 15, right: 192),
//           const Text(
//             'Your report is anonymous. If someone is in immediate danger, call the local emergency services, don’t wait',
//             style: TU.smTxt,
//           ).paddingOnly(top: 5, left: 15, right: 25),
//           const Text(
//             'It’s spam',
//             style: TU.smTxt2,
//           ).paddingOnly(top: 27, left: 16, right: 300),
//           const Text(
//             'Nudity or sexual content',
//             style: TU.smTxt2,
//           ).paddingOnly(top: 25, left: 16, right: 197),
//           const Text(
//             'Hate speech or symbols',
//             style: TU.smTxt2,
//           ).paddingOnly(top: 25, left: 15, right: 193),
//           const Text(
//             'False information',
//             style: TU.smTxt2,
//           ).paddingOnly(top: 35, left: 16, right: 245),
//           const Text(
//             'Bullying or harassment',
//             style: TU.smTxt2,
//           ).paddingOnly(top: 26, left: 16, right: 205),
//           const Text(
//             'Violence or dangerous organization',
//             style: TU.smTxt2,
//           ).paddingOnly(top: 25, left: 16, right: 115),
//           const Text(
//             'Scam or fraud',
//             style: TU.smTxt2,
//           ).paddingOnly(top: 25, left: 16, right: 265),
//           const Text(
//             'Something else',
//             style: TU.smTxt2,
//           ).paddingOnly(top: 25, left: 16, right: 260),
//         ],
//       ),
//     );
//   },
// );
