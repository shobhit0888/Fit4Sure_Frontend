import 'package:flutter/material.dart';

class FeaturesDialogWidget extends StatefulWidget {
  const FeaturesDialogWidget({super.key});

  @override
  State<FeaturesDialogWidget> createState() => _FeaturesDialogWidgetState();
}

class _FeaturesDialogWidgetState extends State<FeaturesDialogWidget> {
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildFeatureDialogContent(context),
    );
  }

  Widget _buildFeatureDialogContent(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .7,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xffC3717B),
        borderRadius: BorderRadius.circular(25),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Text("Yoga",
                style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: Text(
                "Yoga is the journey of the self, through the self, to the self. It is the art of connecting mind, body, and spirit, finding balance and harmony within, and embracing the serenity that unfolds with each mindful breath.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 11,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            // place a image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * .25,
                width: MediaQuery.of(context).size.width * .70,
                // rounded
                decoration: BoxDecoration(
                  color: Color(0xFFE7D6D8),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  'images/yoga_pic.png',
                  fit: BoxFit.fill,
                  // height: MediaQuery.of(context).size.height * .12,
                  // width: MediaQuery.of(context).size.width * .3,
                  // fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: Text(
                "Yoga is the journey of the self, through the self, to the self. It is the art of connecting mind, body, and spirit, finding balance and harmony within, and embracing the serenity that unfolds with each mindful breath.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 11,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * .25,
                width: MediaQuery.of(context).size.width * .70,
                // rounded
                decoration: BoxDecoration(
                  color: Color(0xFFE7D6D8),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  'images/yoga_pic.png',
                  fit: BoxFit.fill,
                  // height: MediaQuery.of(context).size.height * .12,
                  // width: MediaQuery.of(context).size.width * .3,
                  // fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
                "Yoga: where the mind, body, and breath find harmony, and peace becomes a practice.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )),

            SizedBox(
              height: 30,
            ),
            
          ],
        ),
      ),
    );
  }
}
