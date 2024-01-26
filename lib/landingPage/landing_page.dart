import 'package:fit4sure/homePages/entry_page_1.dart';
import 'package:fit4sure/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../homePages/home_page.dart';
import '../signInPages/contact_number.dart';
import '../signInPages/otp.dart';
import '../signUpPages/personal_info.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // int index = 0;
  // final screens = [
  //   IntroPage(),
  //   ContactNumber(),
  //   OtpVerification(),
  //   PersonalInfoForSignUp(),
  // ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'images/image1.png',
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      top: 350, child: Image.asset('images/Overlay.png')),
                  Positioned(
                      top: 20,
                      left: 20,
                      child: Image.asset('images/image2.png')),
                ],
              ),
              // screens[index],
              IntroPage(),
              SizedBox(
                height: size.height * .015,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactNumber()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * .2,
                    vertical: size.height * .02,
                  ),
                ),
                child: Text(
                  "Get Started",
                  // buttonString[index],
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.15,
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Center(
              child: Text(
                "Wherever You Are \n Heath Is Number One",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Your fitness is your greatest asset",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
            ),
          ],
        ));
  }
}
