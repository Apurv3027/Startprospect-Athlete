import 'package:flutter/material.dart';
import 'package:starprospect/utility/Colors.dart';

CommonBottomBar({
  required List<BottomNavigationBarItem> items,
  void Function(int)? onTap,
  int currentIndex = 0,
  BottomNavigationBarType? type,
  Color? backgroundColor,
  Color? selectedItemColor,
  Color? unselectedItemColor,
}) {
  return BottomNavigationBar(
    type: type,
    currentIndex: currentIndex,
    backgroundColor: backgroundColor,
    selectedItemColor: selectedItemColor,
    selectedIconTheme: const IconThemeData(color: CU.onSurface),
    unselectedItemColor: unselectedItemColor,
    selectedFontSize: 12,
    unselectedFontSize: 12,
    onTap: onTap,
    items: items,
  );
}