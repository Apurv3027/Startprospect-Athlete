import 'package:flutter/material.dart';

CommonAppBar({
  GestureTapCallback? onTap,
  String? titleEx,
  TextStyle? style,
  bool automaticallyImplyLeading = true,
  Widget? leadingIcon,
  List<Widget>? action,
  bool? centerTitle,
  PreferredSizeWidget? bottom,
}) {
  return AppBar(
    title: Text(
      titleEx!,
      style: style,
    ),
    centerTitle: centerTitle,
    automaticallyImplyLeading: automaticallyImplyLeading,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xff6a58fb),
            Color(0xff4599f4),
          ],
        ),
      ),
    ),
    //backgroundColor: Colors.white,
    elevation: 0,
    leading: leadingIcon,
    actions: action,
    bottom: bottom,
  );
}
