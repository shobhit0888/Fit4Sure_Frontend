import 'package:fit4sure/analytics/analytics.dart';
import 'package:fit4sure/clientDashboard/profile_page.dart';
import 'package:fit4sure/coaches/coach_start_page.dart';
import 'package:fit4sure/communityPages/community_page.dart';
import 'package:fit4sure/homePages/home_page.dart';
import 'package:fit4sure/plansPages/plans.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../models/rive_assets.dart';
import '../utils/rive_utils.dart';
import '../widgets/animated_bar.dart';

class EntryPage extends StatefulWidget {
  int? currentIndex;
  final token;
  EntryPage({@required this.token, super.key, this.currentIndex});

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  // var currentIndex =widget.index ?? 0;
  final screens = [
    HomePage(),
    CommunityPage(),
    AnalyticsPage(
      index: 0,
    ),
    ProfilePage(),
  ];
  // RiveAsset selectedBottomNav = bottomNavs.first;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: screens[widget.currentIndex!],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        height: size.width * .15,
        decoration: BoxDecoration(
          color: Colors.grey[600],
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(.15),
          //     blurRadius: 30,
          //     // offset: Offset(0, 10),
          //   ),
          // ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: size.width * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(
                () {
                  widget.currentIndex = index;
                },
              );
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: size.width * .03),
                AnimatedContainer(
                  duration: Duration(milliseconds: 150),
                  curve: Curves.fastOutSlowIn,
                  margin: EdgeInsets.only(
                    // bottom: index == currentIndex ? 0 : size.width * .029,
                    // right: size.width * .0222,
                    left: size.width * .0233,
                  ),
                  width: size.width * .18,
                  height: size.width * .085,
                  decoration: BoxDecoration(
                    color: index == widget.currentIndex!
                        ? Colors.black
                        : Colors.grey[300],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    listOfIcons[index],
                    size: size.width * .066,
                    color: index == widget.currentIndex!
                        ? Color(0xffFF592C)
                        : Colors.grey[600],
                  ),
                ),
                SizedBox(height: size.width * .03),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.explore,
    Icons.analytics_rounded,
    Icons.person_rounded,
  ];
}
