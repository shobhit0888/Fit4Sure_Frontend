import 'package:flutter/material.dart';

class ConsultancyDialogWidget extends StatefulWidget {
  const ConsultancyDialogWidget({super.key});

  @override
  State<ConsultancyDialogWidget> createState() =>
      _ConsultancyDialogWidgetState();
}

class _ConsultancyDialogWidgetState extends State<ConsultancyDialogWidget> {
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildConsultancyDialogContent(context),
    );
  }

  List<String> timeSlot = [
    "9:00 AM - 12:00 AM",
    "12:00 AM - 3:00 PM",
    "3:00 PM - 6:00 PM",
  ];
  String? selectedTimeSlot;

  Widget _buildConsultancyDialogContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18),
      child: Container(
        height: MediaQuery.of(context).size.height * .6,
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
          color: Color(0xFFDBD5FF),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Text("Start your journey today!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 58.0, right: 58),
              child: Text(
                "Select your prefered time slot to receive a call from us",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // place a image
            Container(
              height: MediaQuery.of(context).size.height * .18,
              width: MediaQuery.of(context).size.width * .80,
              // rounded
              decoration: BoxDecoration(
                color: Color(0xFFE7D6D8),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                'images/consultancy.png',
                fit: BoxFit.fill,
                // height: MediaQuery.of(context).size.height * .12,
                // width: MediaQuery.of(context).size.width * .3,
                // fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Prefered time slot",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              // width: MediaQuery.of(context).size.width * 0.7,
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                // color: Colors.white,
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: DropdownButton(
                hint: Text('Choose your prefered time slot',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    )), // Not necessary for Option 1
                value: selectedTimeSlot,
                onChanged: (newValue) {
                  setState(() {
                    selectedTimeSlot = newValue;
                  });
                },
                items: timeSlot.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Confirm Consultancy",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
