import 'package:doctors_appointment/src/utils/margin.dart';
import 'package:doctors_appointment/src/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.icon, required this.label});

  final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: kIconBg,
            ),
            child: Center(
              child: SvgPicture.asset(icon),
            ),
          ),
          const YMargin(8),
          Text(
            label,
            style: const TextStyle(color: kPrimary, fontSize: 15),
          )
        ],
      ),
    );
  }
}
