import 'package:flutter/material.dart';

class TimelinePage extends StatefulWidget {
  const TimelinePage({super.key});

  @override
  State<TimelinePage> createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const SizedBox(
        //   height: 30,
        // ),
        Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Text(
            "Today's Report",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Card(
              child: Container(
                height: 130,
                width: MediaQuery.of(context).size.width * .55,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Body Mass Index"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("25.5"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Image.asset(
                        "images/bmi.png",
                        fit: BoxFit.cover,
                        height: 80,
                        width: MediaQuery.of(context).size.width * .42,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Card(
              child: Container(
                height: 130,
                width: MediaQuery.of(context).size.width * .33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFFE8C6),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("BMI"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("25.5"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Image.asset(
                        "images/bmi.png",
                        fit: BoxFit.cover,
                        height: 80,
                        width: MediaQuery.of(context).size.width * .2,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Card(
              child: Container(
                height: 130,
                width: MediaQuery.of(context).size.width * .33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFFE8C6),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("BMI"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("25.5"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Image.asset(
                        "images/bmi.png",
                        fit: BoxFit.cover,
                        height: 80,
                        width: MediaQuery.of(context).size.width * .2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Card(
              child: Container(
                height: 130,
                width: MediaQuery.of(context).size.width * .55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffAFE8C6),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Body Mass Index"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("25.5"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Image.asset(
                        "images/bmi.png",
                        fit: BoxFit.cover,
                        height: 80,
                        width: MediaQuery.of(context).size.width * .42,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Card(
              child: Container(
                height: 130,
                width: MediaQuery.of(context).size.width * .55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffAFE8C6),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Body Mass Index"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("25.5"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Image.asset(
                        "images/bmi.png",
                        fit: BoxFit.cover,
                        height: 80,
                        width: MediaQuery.of(context).size.width * .42,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Card(
              child: Container(
                height: 130,
                width: MediaQuery.of(context).size.width * .33,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("BMI"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("25.5"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Image.asset(
                        "images/bmi.png",
                        fit: BoxFit.cover,
                        height: 80,
                        width: MediaQuery.of(context).size.width * .2,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
