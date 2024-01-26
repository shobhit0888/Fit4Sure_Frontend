import 'package:fit4sure/clientDashboard/info_page.dart';
import 'package:fit4sure/clientDashboard/plans_widget.dart';
import 'package:fit4sure/clientDashboard/timeline_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentIndex = 0;
  final screens = [
    TimelinePage(),
    PlansPage(),
    UserInfoPage(),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black,
                // left bottom and right bottom rounded
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .05,
                      ),
                      Text(
                        "Your Profile",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                      ),
                      // cross icon
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ))
                      // Icon(
                      //   Icons.arrow_back,
                      //   color: Colors.white,
                      // )
                    ],
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  Center(
                    child: Container(
                      height: 160,
                      child: const CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage(
                          'images/Banner.png',

                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Center(
                    child: Text(
                      "Pratik Shah",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: size.width * .15,
              decoration: BoxDecoration(
                color: Colors.black,
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
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                // padding: EdgeInsets.symmetric(horizontal: size.width * .14),
                padding: EdgeInsets.only(
                    left: size.width * .04,
                    right: MediaQuery.of(context).size.width * .14),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    setState(
                      () {
                        currentIndex = index;
                      },
                    );
                  },
                  splashColor: Colors.blue,
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
                          right: size.width * .0233,
                          left: size.width * .0233,
                        ),
                        width: size.width * .23,
                        height: size.width * .085,
                        decoration: BoxDecoration(
                          color: index == currentIndex!
                              ? Color(0xffBBF246)
                              : Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            listOfTabs[index],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: index == currentIndex
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: size.width * .03),
                    ],
                  ),
                ),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: screens[currentIndex]),
          ],
        ),
      ),
    );
  }

  List<String> listOfTabs = ["Timeline", "Plans", "Info"];
  // List<IconData> listOfIcons = [
  //   Icons.home_rounded,
  //   Icons.explore,
  //   Icons.analytics_rounded,
  //   Icons.person_rounded,
  // ];
}
