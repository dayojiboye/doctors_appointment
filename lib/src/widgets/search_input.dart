import 'package:doctors_appointment/src/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: "Search doctor or health issue",
        prefixIcon: Container(
          margin: const EdgeInsetsDirectional.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: SvgPicture.asset("assets/icons/search.svg"),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        filled: true,
        fillColor: kIconBg,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        hintStyle: const TextStyle(
          color: kPrimary,
          fontSize: 15,
        ),
      ),
      style: const TextStyle(
        color: kPrimary,
        fontSize: 15,
      ),
    );
  }
}
