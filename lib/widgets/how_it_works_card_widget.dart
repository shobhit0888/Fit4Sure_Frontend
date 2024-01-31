// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HowItWorksCardWidget extends StatefulWidget {
  String? text;
  String? step;
  HowItWorksCardWidget({
    Key? key,
    this.text,
    this.step,
  }) : super(key: key);

  @override
  State<HowItWorksCardWidget> createState() => _HowItWorksCardWidgetState();
}

class _HowItWorksCardWidgetState extends State<HowItWorksCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * .15,
        width: MediaQuery.of(context).size.width * .4,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 35,
                width: MediaQuery.of(context).size.width * .4,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 154, 205, 200),
                  // radius circular from bottom
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 4),
                  child: Text(
                    widget.step.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),

            // SizedBox(
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.text.toString(),
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
