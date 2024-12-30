import 'package:flutter/material.dart';

CommonDropDownButton({
  bool isExpanded = false,
  String? value,
  required void Function(String?)? onChanged,
  required List<DropdownMenuItem<String>>? items,
  Widget? icon,
 TextStyle? style,
}) {
  return DropdownButtonFormField(
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
      isDense: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    isExpanded: isExpanded,
    value: value,
    icon: icon,
    iconSize: 25,
    elevation: 8,
    style: style,
    items: items,
    onChanged: onChanged,
  );
}
