import 'package:fit4sure/coaches/coach_category.dart';
import 'package:fit4sure/coaches/coach_language.dart';
import 'package:flutter/material.dart';

class CoachGender extends StatefulWidget {
  const CoachGender({super.key});

  @override
  State<CoachGender> createState() => _CoachGenderState();
}

class _CoachGenderState extends State<CoachGender> {
  double _heightm = 80;
  double _widthm = 80;
  double _heightf = 80;
  double _widthf = 80;
  Color colorm = Color(0xffEFE2FF);
  Color colorf = Color(0xffEFE2FF);
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
                "Step 1/3",
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
                "Choose Gender of your coach",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  if (_heightm == 80) {
                    setState(() {
                      _heightm = 100;
                      _widthm = 100;
                      _heightf = 80;
                      _widthf = 80;
                      colorm = Colors.grey;
                      colorf = const Color(0xffEFE2FF);
                    });
                  } else {
                    setState(() {
                      _heightm = 80;
                      _widthm = 80;
                      colorm = const Color(0xffEFE2FF);
                    });
                  }
                },
                child: Column(
                  children: [
                    AnimatedContainer(
                      curve: Curves.easeIn,
                      duration: Duration(milliseconds: 500),
                      height: _heightm,
                      width: _widthm,
                      margin: EdgeInsets.only(right: 20, top: 20),
                      padding: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: colorm,
                          border: Border.all(width: 1)),
                      child: Icon(
                        Icons.male_outlined,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: Text("Male"),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (_heightf == 80) {
                    setState(() {
                      _heightf = 100;
                      _widthf = 100;
                      _heightm = 80;
                      _widthm = 80;
                      colorf = Colors.grey;
                      colorm = Color(0xffEFE2FF);
                    });
                  } else {
                    setState(() {
                      _heightf = 80;
                      _widthf = 80;
                      colorf = Color(0xffEFE2FF);
                    });
                  }
                },
                child: Column(
                  children: [
                    AnimatedContainer(
                      curve: Curves.easeIn,
                      duration: Duration(milliseconds: 500),
                      height: _heightf,
                      width: _widthf,
                      margin: EdgeInsets.only(left: 20, top: 20),
                      padding: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: colorf,
                          border: Border.all(width: 1)),
                      child: Icon(
                        Icons.female_outlined,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0),
                      child: Text("Female"),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
