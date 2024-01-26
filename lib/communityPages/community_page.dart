import 'package:fit4sure/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CommunityPage extends StatefulWidget {
  
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .015,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 14.0, left: 14),
                child: Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .25,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                      image: DecorationImage(
                        image: AssetImage('images/Banner.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                textEditingController: null,
                iconData: Icons.search,
                hintText: 'Search',
                isObscure: false,
                enabled: true,
                inputType: TextInputType.text,
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            // padding: const EdgeInsets.only(right: 35.0),
                            padding: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width * .1),
                            child: Card(
                              color: Colors.black,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                                // side: BorderSide(
                                // width: 5, color: Colors.green)
                              ),
                              child: Text(
                                "  4.5 Stars  ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 4.0, bottom: 15),
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
                              Text(
                                'John Doe',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                '2s ago',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, right: 18, bottom: 16),
                        child: Text(
                          "I am very happy to be with Fit4Sure lorem training sessions and how about you?",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width * .9,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            image: DecorationImage(
                              image: AssetImage('images/Banner.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          Text("  121"),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(Icons.comment),
                          Text("  34"),
                        ],
                      ),
                      SizedBox(
                        height: 15,
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 35.0),
                            child: Card(
                              color: Colors.black,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                                // side: BorderSide(
                                // width: 5, color: Colors.green)
                              ),
                              child: Text(
                                "  4.5 Stars  ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 4.0, bottom: 15),
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
                              Text(
                                'John Doe',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                '2s ago',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, right: 18, bottom: 16),
                        child: Text(
                          "I am very happy to be with Fit4Sure lorem training sessions and how about you?",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width * .9,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            image: DecorationImage(
                              image: AssetImage('images/Banner.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          Text("  121"),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(Icons.comment),
                          Text("  34"),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
