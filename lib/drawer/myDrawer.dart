import 'dart:ui';

import 'package:fit4sure/drawer/aboutUs.dart';
import 'package:fit4sure/drawer/helpAndSupport.dart';
import 'package:fit4sure/drawer/notifications.dart';
import 'package:fit4sure/drawer/referNearn.dart';
import 'package:fit4sure/drawer/reportProblem.dart';
import 'package:fit4sure/homePages/entry_page.dart';
import 'package:flutter/material.dart';

// import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5.0,
          sigmaY: 5.0,
        ),
        child: ListView(
          children: [
            //header
            DrawerHeader(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Please Complete your \n health Assessment",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Kindly Complete your\n Assessment",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 9,
                            )),
                      ],
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("images/Banner.png"),
                              fit: BoxFit.fill)),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.only(top: 1),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.home,
                      color: Colors.white70,
                    ),
                    title: const Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => EntryPage(
                                    token: 0,
                                    currentIndex: 3,
                                  )));
                    },
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.white30,
                    thickness: 1,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.reorder,
                      color: Colors.white70,
                    ),
                    title: const Text(
                      "About us",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (c) => MyAboutUsPage()));
                    },
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.white30,
                    thickness: 1,
                  ),
                  //my orders
                  ListTile(
                    leading: const Icon(
                      Icons.reorder,
                      color: Colors.white70,
                    ),
                    title: const Text(
                      "Notifications",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => MyNotificationsPage()));
                    },
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.white30,
                    thickness: 1,
                  ),
                  //not yet received orders
                  ListTile(
                    leading: const Icon(
                      Icons.picture_in_picture_rounded,
                      color: Colors.white70,
                    ),
                    title: const Text(
                      "Refer & Earn",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => MyReferAndEarnPage()));
                    },
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.white30,
                    thickness: 1,
                  ),
                  //history
                  ListTile(
                    leading: const Icon(
                      Icons.access_time,
                      color: Colors.white70,
                    ),
                    title: const Text(
                      "Help & Support",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => MyHelpSupportPage()));
                    },
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.white30,
                    thickness: 1,
                  ),
                  //search
                  ListTile(
                    leading: const Icon(
                      Icons.search,
                      color: Colors.white70,
                    ),
                    title: const Text(
                      "Report a Problem",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => MyReportProblemPage()));
                    },
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.white30,
                    thickness: 1,
                  ),
                  //logout
                  ListTile(
                    leading: const Icon(
                      Icons.exit_to_app,
                      color: Colors.white70,
                    ),
                    title: const Text(
                      "Logout",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    onTap: () {
                      // FirebaseAuth.instance.signOut();
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (c) => const MySplashScreen()));
                    },
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.white30,
                    thickness: 1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
