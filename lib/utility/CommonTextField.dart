import 'package:flutter/material.dart';

import 'Colors.dart';
import 'TextStyle.dart';

class CTF {
  static Widget commonTextField({
    TextEditingController? controller,
    String? name,
    TextInputType? keyBoard,
    String? hintText,
    String? suggestionTxt,
    Icon? prefixIcon,
    TextInputAction? action,
    int? maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name ?? '', style: TU.color999999w40016.copyWith(fontSize: 17)),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          textInputAction: action,
          controller: controller,
          cursorColor: Colors.blue,
          keyboardType: keyBoard,
          maxLines: maxLines,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            hintText: suggestionTxt,
            hintStyle: const TextStyle(fontSize: 15),
            prefixIcon: prefixIcon,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          ),
        ),
      ],
    );
  }

  static Widget commonProfileTextField({
    TextEditingController? controller,
    String? name,
    TextInputType? keyBoard,
    String? hintText,
    String? suggestionTxt,
    Icon? prefixIcon,
    TextInputAction? action,
    int? maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name ?? '', style: TU.color999999w40016.copyWith(fontSize: 14)),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          textInputAction: action,
          controller: controller,
          cursorColor: Colors.blue,
          keyboardType: keyBoard,
          maxLines: maxLines,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            hintText: suggestionTxt,
            hintStyle: const TextStyle(fontSize: 14),
            prefixIcon: prefixIcon,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          ),
        ),
      ],
    );
  }

  static Widget commonPasswordTextField({
    TextEditingController? controller,
    String? name,
    String? hintText,
    String? suggestionTxt,
    Icon? prefixIcon,
    Function()? onPressed,
    TextInputAction? action,
    required bool obsecure,
    IconButton? btn,sds
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name ?? '', style: TU.color999999w40016.copyWith(fontSize: 17)),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          obscureText: obsecure,
          controller: controller,
          textInputAction: action,
          cursorColor: Colors.blue,
          decoration: InputDecoration(
            hintText: suggestionTxt,
            hintStyle: const TextStyle(fontSize: 15),
            prefixIcon: prefixIcon,
            suffixIcon: btn,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          ),
        ),
      ],
    );
  }

  static Widget commonVerifyTextField({
    TextEditingController? controller,
    String? name,
    String? verify,
    TextInputType? keyBoard,
    String? hintText,
    String? suggestionTxt,
    Icon? prefixIcon,
    TextInputAction? action,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Row(
            children: <Widget>[
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Text(name ?? '',
                      style: TU.color999999w40016.copyWith(fontSize: 17)),
                ),
              ),
              const SizedBox(
                child: Padding(
                  padding: EdgeInsets.only(left: 120),
                  child: Icon(
                    Icons.security_rounded,
                    color: CU.verify,
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(left: 0, right: 1),
                  child: Text(verify ?? '',
                      style: TU.verify.copyWith(fontSize: 12)),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          textInputAction: action,
          controller: controller,
          cursorColor: Colors.blue,
          keyboardType: keyBoard,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            hintText: suggestionTxt,
            hintStyle: const TextStyle(fontSize: 15),
            prefixIcon: prefixIcon,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          ),
        ),
      ],
    );
  }

  static Widget commonverifyMobileTextField({
    TextEditingController? controller,
    String? name,
    String? verify,
    String? hintText,
    String? suggestionTxt,
    Icon? prefixIcon,
    Function()? onPressed,
    Function()? onTap,
    TextInputAction? action,
    required bool obsecure,
    IconButton? btn,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Row(
            children: <Widget>[
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Text(name ?? '',
                      style: TU.color999999w40016.copyWith(fontSize: 17)),
                ),
              ),
              const SizedBox(
                child: Padding(
                  padding: EdgeInsets.only(left: 125),
                  child: Icon(Icons.security_rounded),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(left: 0, right: 1),
                  child: GestureDetector(
                    child: Text(
                      verify ?? '',
                      style: TU.verify2.copyWith(fontSize: 12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          obscureText: obsecure,
          controller: controller,
          textInputAction: action,
          cursorColor: Colors.blue,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            hintText: suggestionTxt,
            hintStyle: const TextStyle(fontSize: 15),
            suffixIcon: btn,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          ),
        ),
      ],
    );
  }
}
