import 'package:fit4sure/meet_coaches/developers_page.dart';
import 'package:fit4sure/meet_coaches/managers_page.dart';
import 'package:fit4sure/meet_coaches/trainers_page.dart';
import 'package:flutter/material.dart';

class MeetCoachesPage extends StatefulWidget {
  const MeetCoachesPage({super.key});

  @override
  State<MeetCoachesPage> createState() => _MeetCoachesPageState();
}

class _MeetCoachesPageState extends State<MeetCoachesPage> {
  int currentIndex = 0;
  final screens = [TrainnersPage(), ManagersPage(), DevelopersPage()];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Text("Meet our Team",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.cancel_outlined,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: size.width * .15,
              decoration: BoxDecoration(
                color: Colors.black,
                
                borderRadius: BorderRadius.circular(50),
              ),
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                
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

  List<String> listOfTabs = ["Trainers", "Managers", "Developers"];
}
