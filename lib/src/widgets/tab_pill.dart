import 'package:doctors_appointment/src/utils/theme.dart';
import 'package:flutter/material.dart';

class TabPill extends StatelessWidget {
  const TabPill({super.key, required this.label, required this.isActive});

  final String label;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        ),
        backgroundColor: MaterialStatePropertyAll(
          isActive ? const Color.fromRGBO(99, 180, 255, 0.1) : kIconBg,
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isActive ? kDeepBlue : kPrimary,
          fontSize: isActive ? 16 : 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
