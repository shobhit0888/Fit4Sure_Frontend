import 'package:fit4sure/analytics/gender_widget.dart';
import 'package:flutter/material.dart';

class TrackHealth extends StatefulWidget {
  const TrackHealth({super.key});

  @override
  State<TrackHealth> createState() => _TrackHealthState();
}

class _TrackHealthState extends State<TrackHealth> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
          SizedBox(
            height: 5,
          ),
          const Text('Enter data to track your health',
              style: TextStyle(fontSize: 12, color: Colors.grey)),
          Padding(
            padding: const EdgeInsets.only(left: 80.0, right: 80, top: 10),
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
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Weight",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * .3,
                    decoration: BoxDecoration(
                      // color: Colors.grey,
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(15),
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
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "0",
                                hintStyle: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Kg",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * .3,
                    decoration: BoxDecoration(
                      // color: Colors.grey,
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(15),
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
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "0",
                                hintStyle: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Text("cm",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500)),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hip Size",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * .3,
                    decoration: BoxDecoration(
                      // color: Colors.grey,
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(15),
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
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "0",
                                hintStyle: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Text("cm",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Waist Size",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * .3,
                    decoration: BoxDecoration(
                      // color: Colors.grey,
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(15),
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
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "0",
                                hintStyle: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Text("cm",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500)),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Age",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * .3,
                    decoration: BoxDecoration(
                      // color: Colors.grey,
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(15),
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
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "0",
                                hintStyle: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Text("yy",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500)),
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
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xffFF592C),
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
    );
  }
}
