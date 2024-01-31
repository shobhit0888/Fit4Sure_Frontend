import 'package:flutter/material.dart';

class CoachCardWidget extends StatefulWidget {
  const CoachCardWidget({super.key});

  @override
  State<CoachCardWidget> createState() => _CoachCardWidgetState();
}

class _CoachCardWidgetState extends State<CoachCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * .12,
        width: MediaQuery.of(context).size.width * .3,
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
    );
  }
}
