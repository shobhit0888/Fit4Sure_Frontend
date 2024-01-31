import 'package:flutter/material.dart';

class MeetCoachWidgetRightHome extends StatefulWidget {
  const MeetCoachWidgetRightHome({super.key});

  @override
  State<MeetCoachWidgetRightHome> createState() =>
      _MeetCoachWidgetRightHomeState();
}

class _MeetCoachWidgetRightHomeState extends State<MeetCoachWidgetRightHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // make it rounded and colored
      height: MediaQuery.of(context).size.height * .32,
      width: MediaQuery.of(context).size.width * .45,
      decoration: BoxDecoration(
        color: Color(0xFFE7D6D8),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Yoga Day",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * .15,
            width: MediaQuery.of(context).size.width * .38,
            // rounded
            decoration: BoxDecoration(
              color: Color(0xFFE7D6D8),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(
              'images/Banner.png',
              fit: BoxFit.fill,
              // height: MediaQuery.of(context).size.height * .12,
              // width: MediaQuery.of(context).size.width * .3,
              // fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 10),
            child: Text(
              "By Chhavi Arora",
              style: TextStyle(
                color: Colors.black,
                fontSize: 11,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // lorem ispsum
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, justo ac ultrices ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 11,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
