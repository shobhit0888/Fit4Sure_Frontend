import 'package:fit4sure/analytics/analytics.dart';
import 'package:fit4sure/plansPages/plans.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'gender_widget.dart';

class AnalyticsHomePage extends StatefulWidget {
  const AnalyticsHomePage({super.key});

  @override
  State<AnalyticsHomePage> createState() => _AnalyticsHomePageState();
}

class _AnalyticsHomePageState extends State<AnalyticsHomePage> {
  int index = 0;
  List<DateTime> _dates = [];
  @override
  void initState() {
    super.initState();
    _dates = _generateDates();
  }

  List<DateTime> _generateDates() {
    var currentDate = DateTime.now();
    List<DateTime> dates = [];

    for (var i = 0; i < 7; i++) {
      // DateTime date = currentDate.add(Duration(days: i));
      dates.add(currentDate.add(Duration(days: i)));
      // print(dates[i]);
      // String date_str = date.toString();
    }
    for (var i = 0; i < 7; i++) {}
    return dates;
  }

  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    // print(_selectedDate);
    return index == 0
        ? Column(
            mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: const EdgeInsets.only(left: 28.0, top: 50),
                child: Text(
                  "November 2023",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                color: Colors.white,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: _dates.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedDate = _dates[index];
                                });
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color:
                                        _selectedDate.day == _dates[index].day
                                            ? Colors.black
                                            : Color(0xffBBF246),
                                    borderRadius: BorderRadius.circular(15)),
                                child: ListTile(
                                  dense: true,
                                  title: Center(
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          // color: _selectedDate == _dates[index]
                                          //     ? Colors.black
                                          //     : Color(0xffBBF246),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Center(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 2.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                DateFormat('EEEE')
                                                    .format(_dates[index])
                                                    .toString()
                                                    .substring(0, 1),
                                                style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            .035,
                                                    color: _selectedDate.day ==
                                                            _dates[index].day
                                                        ? Colors.white
                                                        : Colors.black,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Text(
                                                DateFormat('dd')
                                                    .format(_dates[index]),
                                                style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            .03,
                                                    color: _selectedDate.day ==
                                                            _dates[index].day
                                                        ? Colors.white
                                                        : Colors.black,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        _selectedDate.day == _dates[index].day
                            ? Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Container(
                                  height: 5,
                                  width: 5,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              )
                            : Container()
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Text(
                  "Recommended",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        // enableDrag: true,
                        isScrollControlled: true,
                        showDragHandle: true,
                        context: context,
                        backgroundColor: Colors.white,
                        barrierColor: Colors.black.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0))),
                        builder: (context) {
                          return SingleChildScrollView(
                            child: SizedBox(
                              // height: 455,
                              width: MediaQuery.of(context).size.width,
                              // color: Colors.white,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  // SizedBox(
                                  //   height: 30,
                                  // ),
                                  const Text('Track your health',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  const Text('Enter data to track your health',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey)),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 80.0, right: 80, top: 10),
                                    child: Divider(
                                      thickness: 2,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Gender",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  // SizedBox(
                                  //   height: 10,
                                  // ),
                                  GenderWidget(),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Weight",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: 50,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .3,
                                            decoration: BoxDecoration(
                                              // color: Colors.grey,
                                              border: Border.all(
                                                  color: Colors.grey, width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 25,
                                                ),
                                                Container(
                                                    height: 45,
                                                    width: 50,
                                                    child: TextFormField(
                                                      keyboardType:
                                                          TextInputType.number,
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        hintText: "0",
                                                        hintStyle: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    )),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("Kg",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .2,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Height",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: 50,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .3,
                                            decoration: BoxDecoration(
                                              // color: Colors.grey,
                                              border: Border.all(
                                                  color: Colors.grey, width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 25,
                                                ),
                                                Container(
                                                    height: 45,
                                                    width: 50,
                                                    child: TextFormField(
                                                      keyboardType:
                                                          TextInputType.number,
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        hintText: "0",
                                                        hintStyle: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    )),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("cm",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Hip Size",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: 50,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .3,
                                            decoration: BoxDecoration(
                                              // color: Colors.grey,
                                              border: Border.all(
                                                  color: Colors.grey, width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 25,
                                                ),
                                                Container(
                                                    height: 45,
                                                    width: 50,
                                                    child: TextFormField(
                                                      keyboardType:
                                                          TextInputType.number,
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        hintText: "0",
                                                        hintStyle: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    )),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("cm",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .2,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Waist Size",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: 50,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .3,
                                            decoration: BoxDecoration(
                                              // color: Colors.grey,
                                              border: Border.all(
                                                  color: Colors.grey, width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 25,
                                                ),
                                                Container(
                                                    height: 45,
                                                    width: 50,
                                                    child: TextFormField(
                                                      keyboardType:
                                                          TextInputType.number,
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        hintText: "0",
                                                        hintStyle: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    )),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("cm",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Age",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: 50,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .3,
                                            decoration: BoxDecoration(
                                              // color: Colors.grey,
                                              border: Border.all(
                                                  color: Colors.grey, width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 25,
                                                ),
                                                Container(
                                                    height: 45,
                                                    width: 50,
                                                    child: TextFormField(
                                                      keyboardType:
                                                          TextInputType.number,
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        hintText: "0",
                                                        hintStyle: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    )),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("yy",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "          Track Health          ",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 50,
                                        vertical: 15,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffD8E6EC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // color: Colors.black,
                        height: 25,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Image.asset(
                          "images/find_coach_icon.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Track your health",
                        // buttonString[index],
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffEFE2FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // color: Colors.black,
                        height: 25,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Image.asset(
                          "images/find_coach_icon.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Worried? View Plans",
                        // buttonString[index],
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
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
          )
        : Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      icon: Icon(Icons.arrow_back)),
                  Text(
                    "Explore Plans",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 4.0,
                      bottom: 15,
                    ),
                    child: Container(
                      height: 65,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('images/Banner.png'),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 4.0, bottom: 15, top: 15),
                            child: Container(
                              height: 65,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    AssetImage('images/Banner.png'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'BASIC PLAN',
                                style: GoogleFonts.poppins(
                                    fontSize: 11,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Rs. 499.00/month',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Buy",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffFF6079),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          )
                        ],
                      ),
                      Center(
                        child: Container(
                          // height: 100,
                          width: MediaQuery.of(context).size.width * .8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("Includes",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * .25,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.greenAccent, width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                      // color: Color(0xffFF6079),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "  Recommended  ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.check_outlined,
                                      color: Colors.green),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Lorem ipsum dolor sit amet,",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.check_outlined,
                                      color: Colors.green),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Lorem ipsum dolor sit amet,",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.check_outlined,
                                      color: Colors.green),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Lorem ipsum dolor sit amet,",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.check_outlined,
                                      color: Colors.green),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Lorem ipsum dolor sit amet,",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.check_outlined,
                                      color: Colors.green),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Lorem ipsum dolor sit amet,",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 4.0, bottom: 15, top: 15),
                            child: Container(
                              height: 65,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    AssetImage('images/Banner.png'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'BASIC PLAN',
                                style: GoogleFonts.poppins(
                                    fontSize: 11,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Rs. 499.00/month',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Buy",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffFF6079),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          )
                        ],
                      ),
                      Center(
                        child: Container(
                          // height: 100,
                          width: MediaQuery.of(context).size.width * .8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("Includes",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * .25,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.greenAccent, width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                      // color: Color(0xffFF6079),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "  Recommended  ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.check_outlined,
                                      color: Colors.green),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Lorem ipsum dolor sit amet,",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.check_outlined,
                                      color: Colors.green),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Lorem ipsum dolor sit amet,",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.check_outlined,
                                      color: Colors.green),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Lorem ipsum dolor sit amet,",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.check_outlined,
                                      color: Colors.green),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Lorem ipsum dolor sit amet,",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.check_outlined,
                                      color: Colors.green),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Lorem ipsum dolor sit amet,",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
  }
}
