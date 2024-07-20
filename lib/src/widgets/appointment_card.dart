import 'package:doctors_appointment/src/utils/margin.dart';
import 'package:doctors_appointment/src/utils/theme.dart';
import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: kDeepBlue,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/imran.png",
                      width: 48,
                      height: 48,
                    ),
                    const XMargin(12),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr. Imran Syahir",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kWhite,
                            fontSize: 16,
                          ),
                        ),
                        YMargin(4),
                        Text(
                          "General Doctor",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0XFFCBE1FF),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SvgPicture.asset("assets/icons/chevron-right.svg"),
              ],
            ),
            const YMargin(16),
            const Divider(color: Color.fromRGBO(255, 255, 255, 0.15)),
            const YMargin(16),
            Row(
              children: [
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/calendar-white.svg"),
                    const XMargin(8),
                    const Text(
                      "Sunday, 12 June",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                const XMargin(30),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/clock-white.svg"),
                    const XMargin(8),
                    const Text(
                      "11:00 - 12:00 AM",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
