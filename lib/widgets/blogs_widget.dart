import 'package:flutter/material.dart';

class BlogWidget extends StatefulWidget {
  const BlogWidget({super.key});

  @override
  State<BlogWidget> createState() => _BlogWidgetState();
}

class _BlogWidgetState extends State<BlogWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18),
      child: Container(
        // make it rounded and colored
        height: MediaQuery.of(context).size.height * .35,
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
          color: Color(0xFFE7D6D8),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Text("Yoga Day",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 5,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .18,
              width: MediaQuery.of(context).size.width * .80,
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
              padding: const EdgeInsets.only(left: 180, right: 10),
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
      ),
    );
  }
}
