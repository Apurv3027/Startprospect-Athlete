import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Colors.dart';
import 'TextStyle.dart';

CommonButton({
  required void Function()? onPressed,
  Color? buttonColor,
  String? txt,
}) {
  return Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: CU.background,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(15.0))
    ),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff6A58FB),
      ),
      onPressed: onPressed,
      child: SizedBox(
        height: 50,
        child: Center(
          child: Text(
            txt ?? '',
            style: TU.buttonStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ).paddingAll(10),
      ),
    ),
  );
}

//Profile Card Button
BtnFavorite({
  required void Function()? onPressed,
  String? txt,
}) {
  return OutlinedButton(
    onPressed: onPressed,
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      side: const BorderSide(color: Color(0xff6A58FB)),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        const Image(
          image: AssetImage('assets/image/favorite.png'),
          height: 15,
          width: 18,
        ),
        Text(
          txt!,
          style: TU.cardName,
        ),
      ],
    ),
  );
}

//Bottom Sheet Button Yes
BtnYes({
  required void Function()? onPressed,
  String? txt,
}) {
  return Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: CU.background,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12.0))
    ),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff6A58FB),
      ),
      onPressed: onPressed,
      child: SizedBox(
        width: 125,
        height: 45,
          child: Center(
            child: Text(
              txt ?? '',
              style: TU.appBarActionTxt,
            ),
          ).paddingAll(10),
      ),
    ),
  );
}

//Bottom Sheet Button No
BtnNo({
  required void Function()? onPressed,
  Color? buttonColor,
  String? txt,
}) {
  return Container(
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0))
    ),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff7B838A).withOpacity(0.20),
      ),
      onPressed: onPressed,
      child: SizedBox(
        width: 125,
        height: 45,
        child: Center(
          child: Text(
            txt!,
            style: TU.bsBTN,
          ),
        ).paddingAll(10),
      ),
    ),
  );
}

ListBTN1({
  required void Function()? onPressed,
  String? txt,
}) {
  return Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: CU.background,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12.0))
    ),
    child: OutlinedButton(
      onPressed: () {},
      child: Text(
        txt!,
        style: TU.smTxt.copyWith(color: const Color(0xffF5F6F7)),
      ),
    ),
  );
}

ListBTN2({
  required void Function()? onPressed,
  String? txt,
}) {
  return Container(
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0))
    ),
    child: OutlinedButton(
      onPressed: () {},
      child: Text(
        txt!,
        style: TU.smTxt,
      ),
    ),
  );
}

// ListView(
//   scrollDirection: Axis.vertical,
//   padding: const EdgeInsets.all(10),
//   children: [
//     ListBTN2(
//         onPressed: () {},
//         txt: 'All'
//     ),
//     ListBTN2(
//         onPressed: () {},
//         txt: 'Basketball'
//     ),
//     ListBTN2(
//         onPressed: () {},
//         txt: 'Cricket'
//     ),
//     ListBTN2(
//         onPressed: () {},
//         txt: 'Tech'
//     ),
//     ListBTN2(
//         onPressed: () {},
//         txt: 'Fashion'
//     ),
//   ],
// ),

// child: Text(
//  CT.continueBtn,
//  style: TextStyle(
//    color: Color(0xffFFFFFF),
//    fontFamily: 'Gotham',
//    fontStyle: FontStyle.normal,
//    fontWeight: FontWeight.w400,
//    fontSize: 16,
//  ),
// ),
