import "package:doctors_appointment/src/utils/theme.dart";
import "package:doctors_appointment/src/views/home.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:google_nav_bar/google_nav_bar.dart";
import "package:flutter_svg/flutter_svg.dart";

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentRouteIndex = 0;

  void onItemTap(int value) {
    setState(() {
      currentRouteIndex = value;
    });
  }

  Widget renderWidgetBasedOnIndex() {
    switch (currentRouteIndex) {
      case 1:
        return const Center(child: Text("Schedule"));

      case 2:
        return const Center(child: Text("Message"));

      case 3:
        return const Center(child: Text("Profile"));

      default:
        return const HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Doctors Appointment",
      debugShowCheckedModeBanner: false,
      theme: themeData(context),
      home: Scaffold(
        body: renderWidgetBasedOnIndex(),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
                color: Color(0XFFF6F6F6),
                spreadRadius: 1,
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 16.0,
              ),
              child: GNav(
                rippleColor: Colors.transparent,
                hoverColor: Colors.transparent,
                textStyle: TextStyle(
                  fontFamily: GoogleFonts.nunito().fontFamily,
                  fontWeight: FontWeight.bold,
                  color: kLightBlue,
                ),
                gap: 8,
                activeColor: kLightBlue,
                iconSize: 24,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 12.0,
                ),
                tabBackgroundColor: const Color.fromRGBO(99, 180, 255, 0.1),
                color: kPrimary,
                tabs: [
                  GButton(
                    borderRadius: BorderRadius.circular(12.0),
                    icon: Icons.house,
                    leading: SvgPicture.asset(
                      currentRouteIndex == 0
                          ? "assets/icons/home-active.svg"
                          : "assets/icons/home.svg",
                    ),
                    text: "Home",
                  ),
                  GButton(
                    borderRadius: BorderRadius.circular(12.0),
                    icon: Icons.calendar_month,
                    leading: SvgPicture.asset(
                      currentRouteIndex == 1
                          ? "assets/icons/calendar-active.svg"
                          : "assets/icons/calendar.svg",
                    ),
                    text: "Schedule",
                  ),
                  GButton(
                    borderRadius: BorderRadius.circular(12.0),
                    icon: Icons.message,
                    leading: SvgPicture.asset("assets/icons/message.svg"),
                    text: "Message",
                  ),
                  GButton(
                    borderRadius: BorderRadius.circular(12.0),
                    icon: Icons.person,
                    leading: SvgPicture.asset("assets/icons/profile.svg"),
                    text: "Profile",
                  ),
                ],
                selectedIndex: currentRouteIndex,
                onTabChange: onItemTap,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
