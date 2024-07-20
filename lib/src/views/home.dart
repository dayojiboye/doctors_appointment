import 'package:doctors_appointment/src/utils/margin.dart';
import 'package:doctors_appointment/src/utils/theme.dart';
import 'package:doctors_appointment/src/widgets/appointment_card.dart';
import 'package:doctors_appointment/src/widgets/category.dart';
import 'package:doctors_appointment/src/widgets/nearest_doctor_card.dart';
import 'package:doctors_appointment/src/widgets/search_input.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchTextController = TextEditingController();

  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(
            top: 20,
            left: 24,
            right: 24,
            bottom: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(
                          fontSize: 16,
                          color: kPrimary,
                        ),
                      ),
                      YMargin(6),
                      Text(
                        "James",
                        style: TextStyle(
                          fontSize: 20,
                          color: kHeader,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Image.asset(
                    "assets/images/profile-pic.png",
                    width: 56,
                    height: 56,
                  )
                ],
              ),
              const YMargin(32),
              const AppointmentCard(),
              const YMargin(20),
              SearchInput(controller: searchTextController),
              const YMargin(24),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Category(icon: "assets/icons/sun.svg", label: "Covid 19"),
                  Category(
                      icon: "assets/icons/profile-add.svg", label: "Doctor"),
                  Category(
                      icon: "assets/icons/medicine.svg", label: "Medicine"),
                  Category(
                      icon: "assets/icons/hospital.svg", label: "Hospital"),
                ],
              ),
              const YMargin(32),
              const Text(
                "Near Doctor",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: kHeader,
                ),
              ),
              const YMargin(16),
              const NearestDoctorCard(),
            ],
          ),
        ),
      ),
    );
  }
}
