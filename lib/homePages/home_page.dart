import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fit4sure/analytics/analytics.dart';
import 'package:fit4sure/analytics/track_health.dart';
import 'package:fit4sure/clientDashboard/plans_widget.dart';
import 'package:fit4sure/clientDashboard/profile_page.dart';
import 'package:fit4sure/coaches/review.dart';
import 'package:fit4sure/homePages/carousel_slider.dart';
import 'package:fit4sure/homePages/consultacy_dialog.dart';
import 'package:fit4sure/homePages/entry_page.dart';
import 'package:fit4sure/homePages/feature_dialog.dart';
import 'package:fit4sure/homePages/posts.dart';
import 'package:fit4sure/homePages/testimonial_page.dart';
import 'package:fit4sure/homePages/transformation_page.dart';
import 'package:fit4sure/homePages/vedio_player.dart';
import 'package:fit4sure/meet_coaches/meet_coaches_home.dart';
import 'package:fit4sure/widgets/blogs_widget.dart';
import 'package:fit4sure/widgets/coach_card_widget.dart';
import 'package:fit4sure/widgets/consultancy_form_widget.dart';
import 'package:fit4sure/widgets/features_card_widget.dart';
import 'package:fit4sure/widgets/how_it_works_card_widget.dart';
import 'package:fit4sure/widgets/meet_coach_widget_right_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _showConsultancyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ConsultancyDialogWidget();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F6F6),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                // color: Color(0xffBACDCB),
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              "Welcome!!",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              "Shobhit Gupta",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .23,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 70,
                // left: 100,
                right: 10,
                child: GestureDetector(
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
            // SizedBox(
            //   height: 2,
            // ),
            Column(
              children: [
                // SizedBox(
                //   height: 20,
                // ),
                const VedioPlayer(
                  vedioId: "https://youtu.be/8deZSmo7vWs",
                ),
                // SizedBox(
                //   height: 10,
                // ),
                // Explore more button
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => TestimonialsPage()),
                //     );
                //   },
                //   child: Text(
                //     "Explore More",
                //     style: TextStyle(color: Colors.white, fontSize: 15),
                //   ),
                //   style: ElevatedButton.styleFrom(
                //     primary: Color(0xffFF592C),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(20),
                //     ),
                //     padding: const EdgeInsets.symmetric(
                //       horizontal: 50,
                //       vertical: 12,
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 10,
                // ),
              ],
            ),
            Container(
              color: Colors.grey[200],
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text("Our Services",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FeaturesCardWidget(
                        category: "Yoga",
                      ),
                      FeaturesCardWidget(
                        category: "Diet",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FeaturesCardWidget(
                        category: "Gym",
                      ),
                      FeaturesCardWidget(
                        category: "Meditation",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // SizedBox(
                      //   width: 20,
                      // ),
                      ElevatedButton(
                        onPressed: () {
                          _showConsultancyDialog(context);
                        },
                        child: Text(
                          "Book Consultancy ",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffFF592C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 22,
                            vertical: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EntryPage(
                                      token: "",
                                      currentIndex: 2,
                                    )),
                          );
                        },
                        child: Text(
                          "   Plans Details   ",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffFF592C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 5,
                  margin: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.network(
                        'https://i.ytimg.com/vi/oczdaKr1xiI/maxresdefault.jpg',
                        fit: BoxFit.cover,
                        height: 200,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Explore more button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FitnessTransformationsPage()),
                    );
                  },
                  child: Text(
                    "More Transformations",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffFF592C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CarouselImages(),
            SizedBox(
              height: 25,
            ),
            Container(
              child: Column(
                children: [
                  Text("How does it work?",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 15,
                  ),
                  // use how it works card widget
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HowItWorksCardWidget(
                        text: "1. Choose your plan",
                        step: "Step 1",
                      ),
                      HowItWorksCardWidget(
                        text: "2. Choose your coach",
                        step: "Step 2",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HowItWorksCardWidget(
                        text: "3. Start your journey",
                        step: "Step 3",
                      ),
                      HowItWorksCardWidget(
                        text: "4. Get fit",
                        step: "Step 4",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _showConsultancyDialog(context);
                    },
                    child: Text(
                      " Book Consultancy ",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFF592C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TrackHealth(),
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
                    "Meet the Coaches",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
                          builder: (context) => MeetCoachesPage(),
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
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    CoachCardWidget(),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "  Shobhit Gupta  ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CoachCardWidget(),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "  Shobhit Gupta  ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 35,
                ),
                MeetCoachWidgetRightHome(),
              ],
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Color(0xffEAECFF),
                      borderRadius: BorderRadius.circular(40.0),
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
                              backgroundImage: AssetImage('images/Banner.png'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 36.0, right: 36, top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.greenAccent, width: 1),
                              borderRadius: BorderRadius.circular(20),
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
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(left: 18.0, top: 18),
            //       child: Text(
            //         "Check out our Blogs",
            //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            //       ),
            //     ),
            //     SizedBox(
            //       width: 10,
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(right: 28.0, top: 10),
            //       child: GestureDetector(
            //         onTap: () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //               builder: (context) => EntryPage(currentIndex: 1),
            //             ),
            //           );
            //         },
            //         child: Row(
            //           children: [
            //             Text(
            //               "Read More",
            //               style: TextStyle(
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.w500,
            //                   color: Colors.deepPurple),
            //             ),
            //             SizedBox(
            //               width: 5,
            //             ),
            //             Icon(
            //               Icons.arrow_forward_ios,
            //               size: 15,
            //               color: Colors.deepPurple,
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // BlogWidget(),
            // SizedBox(
            //   height: 10,
            // ),
            // BlogWidget(),
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
                    "Read our Blogs",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
            ConsultancyFormWidget(),
            SizedBox(
              height: 25,
            ),
            CarouselSlider(
                items: [
                  VedioPlayer(
                    vedioId: "https://www.youtube.com/watch?v=RKYhcPV2dbA",
                  ),
                ],
                options: CarouselOptions(
                    aspectRatio: 16 / 10,
                    // autoPlay: true,
                    height: 200,
                    enlargeCenterPage: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.75)),
            SizedBox(
              height: 10,
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

            CarouselSlider(
                items: [
                  Review(),
                ],
                options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 240,
                    enlargeCenterPage: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.95)),
            // const Review(),
            // SizedBox(
            //   height: 20,
            // ),
            // Review(),
            // SizedBox(
            //   height: 20,
            // ),
            // Review(),
            SizedBox(
              height: 40,
            ),
            Image(image: AssetImage('images/consultancy.png')),
            SizedBox(
              height: 20,
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
                GestureDetector(
                  onTap: () {
                    launch("tel://9696660547");
                  },
                  child: Container(
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
                      Image.asset("images/twitter.png", height: 70, width: 70),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    launch("https://fit4sure.netlify.app/");
                  },
                  child: Container(
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
    );
  }
}
