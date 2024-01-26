import 'package:fit4sure/clientDashboard/active_plans.dart';
import 'package:fit4sure/clientDashboard/past_plans.dart';
import 'package:flutter/material.dart';

class PlansPage extends StatefulWidget {
  const PlansPage({super.key});

  @override
  State<PlansPage> createState() => _PlansPageState();
}

class _PlansPageState extends State<PlansPage> {
  int currentIndex = 0;
  final plans = [PastPlans(), ActivePlans()];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .17,
              right: MediaQuery.of(context).size.width * .17),
          child: Container(
            // margin: EdgeInset(20),
            // padding: EdgeInsets.only(
            //   left: size.width * .1,
            //   right: size.width * .1,
            //   // top: size.width * .044,
            // ),
            height: size.width * .08,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              // padding: EdgeInsets.symmetric(horizontal: size.width * .14),
              padding: EdgeInsets.only(
                  left: size.width * .064,
                  right: MediaQuery.of(context).size.width * .14),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  setState(
                    () {
                      currentIndex = index;
                    },
                  );
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.width * .01),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 150),
                      curve: Curves.fastOutSlowIn,
                      margin: EdgeInsets.only(
                        // bottom: index == currentIndex ? 0 : size.width * .029,
                        // right: size.width * .0222,
                        left: size.width * .0233,
                      ),
                      width: size.width * .23,
                      height: size.width * .055,
                      decoration: BoxDecoration(
                        color: index == currentIndex!
                            ? Color(0xffBBF246)
                            : Colors.white,
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
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.width * .01),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: size.width * .02),
        plans[currentIndex],
      ],
    );
  }

  List<String> listOfTabs = [
    'Past',
    'Current',
  ];
}
