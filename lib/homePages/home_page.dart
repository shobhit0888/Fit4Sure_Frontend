import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fit4sure/clientDashboard/profile_page.dart';
import 'package:fit4sure/coaches/review.dart';
import 'package:fit4sure/coaches/steps.dart';
import 'package:fit4sure/homePages/carousel_slider.dart';
import 'package:fit4sure/homePages/entry_page.dart';
import 'package:fit4sure/homePages/posts.dart';
import 'package:fit4sure/homePages/vedio_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              "Welcome!!",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                          // SizedBox(
                          //   height: 5,
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              "Shobhit Gupta",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .23,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfilePage()),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(
                            left: 4.0,
                          ),
                          child: SizedBox(
                            height: 65,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage('images/Banner.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 150,
                    child: Container(
                        child: Image.asset('images/bottom_border.png'))),
                Container(
                  height: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('images/home_page1.png'),
                        fit: BoxFit.fitWidth),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 105,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            ' fitness',
                            textStyle: GoogleFonts.mySoul(
                                fontSize: 45,
                                letterSpacing: 3,
                                fontWeight: FontWeight.w500),
                            speed: const Duration(milliseconds: 100),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("is your greatest asset",
                          style: GoogleFonts.lato(
                              fontSize: 15,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w400)),
                    ),
                  ],
                ),
              ]),
              SizedBox(
                height: 7,
              ),

              // Container(
              //   height: 200,
              //   width: MediaQuery.of(context).size.width,
              //   decoration: BoxDecoration(
              //     color: Colors.black,
              //     // borderRadius: BorderRadius.circular(10),
              //     image: DecorationImage(
              //         image: AssetImage('images/home_vedio.png'),
              //         fit: BoxFit.fitWidth),
              //   ),
              // ),
              const VedioPlayer(),
              // SizedBox(
              //   height: 5,
              // ),
              //
              CarouselImages(),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 18),
                child: Text(
                  "How it works?",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              Divider(
                thickness: 2,
                indent: 18,
                endIndent: 18,
              ),
              StepPage(),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 48.0, right: 48.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EntryPage(currentIndex: 3),
                        ),
                      );
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
                            borderRadius: BorderRadius.all(Radius.circular(10)),
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
                          "Find your Coach",
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
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, top: 18),
                    child: Text(
                      "Explore Plans",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 28.0, top: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EntryPage(currentIndex: 2),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "View All",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.deepPurple),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Colors.deepPurple,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CarouselSlider(
                  items: [
                    Container(
                      height: 270,
                      // width: MediaQuery.of(context).size.width * .5,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Color(0xffEAECFF),
                        borderRadius: BorderRadius.circular(40.0),
                        // image: DecorationImage(
                        //   image: AssetImage("images/carousel.png"),
                        //   fit: BoxFit.cover,
                        // )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "BASIC PLAN",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 11),
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Text(
                            "Rs.499/month",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Center(
                            child: Container(
                              height: 60,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    AssetImage('images/Banner.png'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 36.0, right: 36, top: 10),
                            child: Container(
                              // padding: EdgeInsets.only(left: 20, right: 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.greenAccent, width: 1),
                                borderRadius: BorderRadius.circular(20),
                                // color: Color(0xffFF6079),
                              ),
                              child: Center(
                                child: Text(
                                  "  Recommended  ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Buy Now",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffA48AED),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          )
                        ],
                      ),
                    )
                  ],
                  options: CarouselOptions(
                      aspectRatio: 9 / 16,
                      autoPlay: true,
                      height: 270,
                      enlargeCenterPage: true,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.55)),
              // SizedBox(
              //   height: 10,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, top: 18),
                    child: Text(
                      "Latest Posts",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 28.0, top: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EntryPage(currentIndex: 1),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Read More",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.deepPurple),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Colors.deepPurple,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              PostList(),
              SizedBox(
                height: 25,
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
                height: 10,
              ),
              const Review(),
              SizedBox(
                height: 20,
              ),
              Review(),
              SizedBox(
                height: 20,
              ),
              Review(),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text("Contact Us",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                  ),
                  Text(
                    "24 X 7 Support",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   width: 20,
                  // ),
                  Container(
                    height: 50,
                    // width: ,
                    decoration: BoxDecoration(
                      color: Color(0xffAFE8C6),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.call,
                          color: Colors.black,
                        ),
                        Text(
                          "     +91 9666645826     ",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    // width: ,
                    decoration: BoxDecoration(
                      color: Color(0xffAFE8C6),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Image.asset("images/insta_icon.png",
                            height: 70, width: 70),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   width: 20,
                  // ),
                  Container(
                    height: 50,
                    // width: ,
                    decoration: BoxDecoration(
                      color: Color(0xffAFE8C6),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Image.asset("images/twitter.png",
                            height: 70, width: 70),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    // width: ,
                    decoration: BoxDecoration(
                      color: Color(0xffAFE8C6),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 45,
                        ),
                        Icon(
                          Icons.public_outlined,
                          color: Colors.black,
                        ),
                        Text(
                          "  fit4sure.in   ",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 45,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 270,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .3,
                        ),
                        SizedBox(
                            // height: 80,
                            width: 80,
                            child: Image.asset('images/image2.png')),
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Text(
                            "Fit4Sure",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "that's all",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500),
                            ),
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Text(
                              "folks!",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .1,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Text("2023 ALL RIGHTS RESERVED",
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400)),
                            SizedBox(
                              height: 10,
                            ),
                            Text("PRIVACY POLICY",
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400)),
                            SizedBox(
                              height: 10,
                            ),
                            Text("TERMS & CONDITIONS",
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400)),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
