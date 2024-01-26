import 'package:flutter/material.dart';

class CoachLanguage extends StatefulWidget {
  const CoachLanguage({super.key});

  @override
  State<CoachLanguage> createState() => _CoachLanguageState();
}

class _CoachLanguageState extends State<CoachLanguage> {
  @override
  List<String> language = [
    "Hindi",
    "English",
    "Marathi",
    "Gujarati",
    "Tamil",
  ];
  String? selectedLanguage;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffEFE2FF),
      elevation: 15,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text("Find your coach",
                  style: TextStyle(
                    fontSize: 12,
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              Text(
                "Step 3/3",
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50.0, left: 50),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Center(
                  child: Text(
                "Choose Langauge of your coach",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Container(
            // width: MediaQuery.of(context).size.width * 0.7,
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            decoration: BoxDecoration(
              // color: Colors.white,
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: DropdownButton(
              hint: Text('Choose Language'), // Not necessary for Option 1
              value: selectedLanguage,
              onChanged: (newValue) {
                setState(() {
                  selectedLanguage = newValue;
                });
              },
              items: language.map((location) {
                return DropdownMenuItem(
                  child: new Text(location),
                  value: location,
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 55,
          ),
        ],
      ),
    );
  }
}
