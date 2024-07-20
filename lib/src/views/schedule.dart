import 'package:doctors_appointment/src/utils/margin.dart';
import 'package:doctors_appointment/src/utils/theme.dart';
import 'package:doctors_appointment/src/widgets/appointment_card_v2.dart';
import 'package:doctors_appointment/src/widgets/tab_pill.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        bottom: false,
        child: Container(
          padding: const EdgeInsets.only(top: 20),
          child: const Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    TabPill(label: "Canceled Schedule", isActive: false),
                    XMargin(12),
                    TabPill(label: "Upcoming Schedule", isActive: true),
                    XMargin(12),
                    TabPill(label: "Completed Schedule", isActive: false),
                  ],
                ),
              ),
              YMargin(24),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                    // top: 24,
                    left: 24,
                    right: 24,
                    bottom: 24,
                  ),
                  child: Column(
                    children: [
                      AppointmentCardV2(
                        name: "Dr. Joseph Brostito",
                        image: "assets/images/joseph.png",
                      ),
                      YMargin(16),
                      AppointmentCardV2(
                        name: "Dr. Bessie Coleman",
                        image: "assets/images/bessie.png",
                      ),
                      YMargin(16),
                      AppointmentCardV2(
                        name: "Dr. Babe Didrikson",
                        image: "assets/images/babe.png",
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
