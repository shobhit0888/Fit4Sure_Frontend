import 'dart:ffi';

import 'package:fit4sure/coaches/caoch_gender.dart';
import 'package:fit4sure/coaches/coach_category.dart';
import 'package:fit4sure/coaches/coach_language.dart';
import 'package:fit4sure/coaches/coach_list.dart';
import 'package:fit4sure/coaches/steps.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../clientDashboard/profile_page.dart';

class CoachStartPage extends StatefulWidget {
  const CoachStartPage({super.key});

  @override
  State<CoachStartPage> createState() => _CoachStartPageState();
}

class _CoachStartPageState extends State<CoachStartPage> {
  int currentIndex = 0;
  final coachScreens = [
    // CoachList(),
    StepPage(),
    CoachGender(),
    CoachCategory(),
    CoachLanguage(),
    CoachList()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      "Find Your Coach",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfilePage()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4.0, bottom: 15),
                      child: Container(
                        height: 65,
                        child: const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/Banner.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Card(
                elevation: 0,
                child: Column(
                  children: [
                    coachScreens[currentIndex],
                    SizedBox(
                      height: 30,
                    ),
                    currentIndex == 0
                        ? Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 18.0, right: 18.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    currentIndex = 1;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffEFE2FF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 50,
                                    vertical: 15,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      // color: Colors.black,
                                      height: 25,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Image.asset(
                                        "images/find_coach_icon.png",
                                        height: 20,
                                        width: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Get Started",
                                      // buttonString[index],
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12.0, right: 12.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      currentIndex--;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    // backgroundColor: const Color(0xffEFE2FF),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.black, width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 30,
                                      vertical: 15,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Previous",
                                        // buttonString[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12.0, right: 12.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (currentIndex < 4) {
                                      setState(() {
                                        currentIndex++;
                                      });
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffEFE2FF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 35,
                                      vertical: 15,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "    Next  ",
                                        // buttonString[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Icon(Icons.arrow_forward),
                                      SizedBox(
                                        width: 5,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                ),
                child: Text(
                  "Read reviews here",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0, left: 18),
                child: Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 35.0),
                            child: Card(
                              color: Colors.black,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                              ),
                              child: Text(
                                "  4.5 Stars  ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 150,
                              width: MediaQuery.of(context).size.width * .35,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                  image: AssetImage('images/Banner.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                    "Pratik Shah",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud",
                                      style: TextStyle(
                                        fontSize: 11,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),

              //2nd review
//
//
//
//
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0, left: 18),
                child: Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 35.0),
                            child: Card(
                              color: Colors.black,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                              ),
                              child: Text(
                                "  4.5 Stars  ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 150,
                              width: MediaQuery.of(context).size.width * .35,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                  image: AssetImage('images/Banner.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                    "Pratik Shah",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud",
                                      style: TextStyle(
                                        fontSize: 11,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
