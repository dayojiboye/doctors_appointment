import 'package:doctors_appointment/src/utils/margin.dart';
import 'package:doctors_appointment/src/utils/theme.dart';
import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";

class AppointmentCardV2 extends StatelessWidget {
  const AppointmentCardV2({super.key, required this.name, required this.image});

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    image,
                    width: 48,
                    height: 48,
                  ),
                  const XMargin(12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kHeader,
                          fontSize: 16,
                        ),
                      ),
                      const YMargin(4),
                      const Text(
                        "Dental Specialist",
                        style: TextStyle(
                          fontSize: 14,
                          color: kPrimary,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SvgPicture.asset("assets/icons/chevron-right.svg"),
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
                  SvgPicture.asset("assets/icons/calendar-mini.svg"),
                  const XMargin(8),
                  const Text(
                    "Sunday, 12 June",
                    style: TextStyle(
                      color: kPrimary,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              const XMargin(30),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/clock-mini.svg"),
                  const XMargin(8),
                  const Text(
                    "11:00 - 12:00 AM",
                    style: TextStyle(
                      color: kPrimary,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ],
          ),
          const YMargin(20),
          FilledButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Color.fromRGBO(
                  99,
                  180,
                  255,
                  0.1,
                ),
              ),
              minimumSize: MaterialStatePropertyAll(
                Size(
                  double.infinity,
                  39,
                ),
              ),
              padding: MaterialStatePropertyAll(
                EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 12,
                ),
              ),
            ),
            child: const Text(
              "Detail",
              style: TextStyle(
                color: kDeepBlue,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
