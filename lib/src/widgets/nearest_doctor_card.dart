import 'package:doctors_appointment/src/utils/margin.dart';
import 'package:doctors_appointment/src/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NearestDoctorCard extends StatelessWidget {
  const NearestDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        decoration: const BoxDecoration(
          color: kWhite,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Color.fromRGBO(90, 117, 167, 0.04),
              spreadRadius: 0,
              offset: Offset(2, 12),
            )
          ],
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
                  children: [
                    Image.asset(
                      "assets/images/joseph.png",
                      width: 48,
                      height: 48,
                    ),
                    const XMargin(10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr. Joseph Brostito",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                            color: kHeader,
                          ),
                        ),
                        YMargin(8),
                        Text(
                          "Dental Specialist",
                          style: TextStyle(
                            color: kPrimary,
                            fontSize: 14,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/location.svg"),
                    const XMargin(8),
                    const Text(
                      "1.2 KM",
                      style: TextStyle(
                        fontSize: 14,
                        color: kPrimary,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const YMargin(20.5),
            const Divider(
              color: Color(0XFFF5F5F5),
              thickness: 1,
            ),
            const YMargin(20.5),
            Row(
              children: [
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/clock-orange.svg"),
                    const XMargin(6),
                    const Text(
                      "4,8 (120 Reviews)",
                      style: TextStyle(
                        fontSize: 12,
                        color: kOrange,
                      ),
                    )
                  ],
                ),
                const XMargin(25.5),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/clock-blue.svg"),
                    const XMargin(6),
                    const Text(
                      "Open at 17.00",
                      style: TextStyle(
                        fontSize: 12,
                        color: kDeepBlue,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
