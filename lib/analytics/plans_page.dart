import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'analytics.dart';

class AnalyticsPlansPage extends StatefulWidget {
  const AnalyticsPlansPage({super.key});

  @override
  State<AnalyticsPlansPage> createState() => _AnalyticsPlansPageState();
}

class _AnalyticsPlansPageState extends State<AnalyticsPlansPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 65,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AnalyticsPage(
                      index: 0,
                    );
                  }));
                },
                icon: Icon(Icons.arrow_back)),
            Text(
              "Explore Plans",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4.0, bottom: 15, top: 60),
              child: Container(
                height: 65,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/Banner.png'),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 15,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 4.0, bottom: 15, top: 15),
                      child: Container(
                        height: 65,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/Banner.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'BASIC PLAN',
                          style: GoogleFonts.poppins(
                              fontSize: 11,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Rs. 499.00/month',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Buy",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffFF6079),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    )
                  ],
                ),
                Center(
                  child: Container(
                    // height: 100,
                    width: MediaQuery.of(context).size.width * .8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text("Includes",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .25,
                            ),
                            Container(
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
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.check_outlined, color: Colors.green),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Lorem ipsum dolor sit amet,",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.check_outlined, color: Colors.green),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Lorem ipsum dolor sit amet,",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.check_outlined, color: Colors.green),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Lorem ipsum dolor sit amet,",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.check_outlined, color: Colors.green),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Lorem ipsum dolor sit amet,",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.check_outlined, color: Colors.green),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Lorem ipsum dolor sit amet,",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 15,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 4.0, bottom: 15, top: 15),
                      child: Container(
                        height: 65,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/Banner.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'BASIC PLAN',
                          style: GoogleFonts.poppins(
                              fontSize: 11,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Rs. 499.00/month',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Buy",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffFF6079),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    )
                  ],
                ),
                Center(
                  child: Container(
                    // height: 100,
                    width: MediaQuery.of(context).size.width * .8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text("Includes",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .25,
                            ),
                            Container(
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
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.check_outlined, color: Colors.green),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Lorem ipsum dolor sit amet,",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.check_outlined, color: Colors.green),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Lorem ipsum dolor sit amet,",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.check_outlined, color: Colors.green),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Lorem ipsum dolor sit amet,",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.check_outlined, color: Colors.green),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Lorem ipsum dolor sit amet,",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.check_outlined, color: Colors.green),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Lorem ipsum dolor sit amet,",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
